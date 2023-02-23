#include "src/bram_uio.hpp"
#include <iostream>
#include <string>
#include <cstdio>
#include <chrono>
#include <opencv2/opencv.hpp>

#include <stdio.h>
#include <sys/types.h>
#include <dirent.h>

#define IMG_H 10
#define IMG_W 10

#define BYTES_PR_PX 4

// tick_count t1;

// Takes a scaled and normalized image
//! SETS BRAM[128]=4;
void pic2bram(cv::Mat &img, BRAM bram)
{
    bram[128] = 4;
    int counter = 0;
    char tmp[BYTES_PR_PX];
    for (int i = 0; i < IMG_W; i++)
    {
        for (int j = 0; j < IMG_H; j++)
        {
            float px = img.at<float>(i, j);
            memcpy(tmp, &px, BYTES_PR_PX);
            uint32_t val = (uint32_t)((tmp[3] << 24) | (tmp[2] << 16) | (tmp[1] << 8) | (tmp[0]));
            bram[counter] = val;
            counter++;
        }
    }
}

void scale_and_normalize(cv::Mat &org, cv::Mat &dst){
    org.convertTo(dst, CV_32FC1);
    cv::resize(org, dst, cv::Size(IMG_W, IMG_H), cv::INTER_LINEAR);
    org.convertTo(dst, CV_32F, 1.0 / 255, 0);
}

int count_files(const char *path)
{
    DIR *dp;
    int n = 0;
    struct dirent *ep;
    dp = opendir(path);

    if (dp != NULL)
    {
        while (ep = readdir(dp))
            n++;
        (void)closedir(dp);
    }
    else
        perror("Couldn't open the directory");
    return n - 2;
}

int open_image(const char *folder, int number, cv::Mat &img)
{
    char *filepath = new char[100];
    sprintf(filepath, "%s/%i.jpg", folder, number);
    // std::cout << filepath << std::endl;

    img = cv::imread(filepath, cv::IMREAD_GRAYSCALE);
    // Check for failure
    if (img.empty())
    {
        std::cout << "Could not open or find the image" << std::endl;
        return -1;
    }
    return 0;
}

int main(int argc, char *argv[])
{
    BRAM bram(0, 8000); // ...
    std::cout << "BRAM initialized\r\n\n";

    const char *folder[3] = {"Testing/0", "Testing/1", "Testing/2"};
    int n[3] = {count_files(folder[0]), count_files(folder[1]), count_files(folder[2])};

    int false_labels[3]={0,0,0};
    double time_sum[3] = {0,0,0};
    cv::Mat img;
    for (int i = 0; i < 3; i++)
    {
        for (int j = 1; j < n[i]+1; j++)
        {
            open_image(folder[i], j, img);
            scale_and_normalize(img, img);
            auto t1 = std::chrono::high_resolution_clock::now();
            pic2bram(img, bram);
            usleep(500000);
            while (bram[128] == 4)
                ;

            auto t2 = std::chrono::high_resolution_clock::now();
            auto ms_int = std::chrono::duration_cast<std::chrono::milliseconds>(t2 - t1);
            std::chrono::duration<double, std::milli> ms_double = t2 - t1;
            time_sum[i]+=ms_double.count();
            std::cout << "true label: "<< i <<" NN: " << bram[128] << std::endl;
            // std::cout <<"   : "<< ms_double.count() << "ms " << std::endl;
            if(bram[128]!=i){
                std::cout << "!!!!false lable!!!!!" << std::endl;
                false_labels[i]++;
            }
        }
    }
    for(int i = 0; i<3; i++){
        std::cout << "Pose: " << i << std::endl;
        std::cout << "False labes: " <<false_labels[i]<<std::endl;
        std::cout << "Error rate " << (double)false_labels[i]/(double)n[i]*100 << "%" << std::endl; 
        std::cout << "Avg duration: " <<time_sum[i]/n[i]*1000<<"ns" << std::endl << std::endl;
    }
    return 0;
}
//
//  ViewController.m
//  0120-URLConnectionDownloader
//
//  Created by xzr on 15-1-20.
//  Copyright (c) 2015年 xzr.etc All rights reserved.
//

#import "ViewController.h"
#import "XDownloader.h"
#import "XDownloaderManager.h"
@interface ViewController ()
@property (strong, nonatomic) XDownloader *downloader;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

}
- (IBAction)start {
    NSURL *url = [NSURL URLWithString:@"http://localhost/test.mp4"];
    
    [[XDownloaderManager sharedXDownloaderManager] downloadWithURL:url Progress:^(float progress) {
        NSLog(@"%f", progress);
    } Completion:^(NSString *filePath) {
        NSLog(@"%@", filePath);
    } Failed:^(NSString *errorMessage) {
        NSLog(@"%@", errorMessage);
    }];
    
//    XDownloader *downloader = [[XDownloader alloc] init];
//    self.downloader = downloader;
//    
//    [downloader downloadWithURL:url Progress:^(float progress) {
//        NSLog(@"%f", progress);
//    } Completion:^(NSString *filePath) {
//        NSLog(@"下载完成,下载到:%@", filePath);
//    } Failed:nil];
}
- (IBAction)pause {
    
    [[XDownloaderManager sharedXDownloaderManager] pauseWithURL:[NSURL URLWithString:@"http://localhost/test.mp4"]];
    
//    [self.downloader pause];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    
}

@end

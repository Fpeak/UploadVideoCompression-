//
//  FirstController.m
//  pods
//
//  Created by 高山峰 on 2017/5/15.
//  Copyright © 2017年 高山峰. All rights reserved.
//

#import "FirstController.h"
#import "SecondViewController.h"
#import "VideoViewController.h"
#define kwith [UIScreen mainScreen].bounds.size.width
#define kheight [UIScreen mainScreen].bounds.size.height
@interface FirstController ()

@end

@implementation FirstController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"第一层";

    [self studentWithName:1];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(kwith/2-50, 150, 100, 30);
    button.backgroundColor = [UIColor redColor];
    [button setTitle:@"点击" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(didClickButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
}

-(void)didClickButton{
    VideoViewController *secondVC = [[VideoViewController alloc]init];
    [self.navigationController pushViewController:secondVC animated:YES];
}
-(void)studentWithName:(Test)name{
    switch (name) {
        case 0:
            NSLog(@"AA");
            break;
        case 1:
            NSLog(@"BB");
            break;
        case 2:
            NSLog(@"CC");
            break;
        default:
            break;
    }
}

-(void)setname:(NSString *)name{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

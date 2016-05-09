//
//  ViewController2.m
//  gesturetransition
//
//  Created by Linyou-IOS-1 on 16/5/9.
//  Copyright © 2016年 MuYou INTERACTIVE TECHNOLOGY LIMITED. All rights reserved.
//

#import "ViewController2.h"
#import "ADSwipeTransition.h"
#import "ADTransitioningDelegate.h"
@interface ViewController2 ()
@property(nonatomic,strong)UISwipeGestureRecognizer *swiperight;
@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor blueColor];
    self.swiperight=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(to2tviewcontroller)];
    self.swiperight.direction=UISwipeGestureRecognizerDirectionLeft;
    [self.view addGestureRecognizer:self.swiperight];
    
    
    // Do any additional setup after loading the view.
}

-(void)to2tviewcontroller
{
    ADTransition * transition = [[ADSwipeTransition alloc] initWithDuration:1 orientation:ADTransitionLeftToRight sourceRect:self.view.frame];
    self.transition=transition;
    
    //[self popViewControllerWithTransition:transition];
    [self.navigationController popViewControllerAnimated:YES];
    
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

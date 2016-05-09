//
//  ViewController.m
//  gesturetransition
//
//  Created by Linyou-IOS-1 on 16/5/9.
//  Copyright © 2016年 MuYou INTERACTIVE TECHNOLOGY LIMITED. All rights reserved.
//

#import "ViewController0.h"
#import "ViewController1.h"
#import "ADTransition.h"
#import "ADSwipeTransition.h"
#include "ADModernPushTransition.h"
#import "ADTransitioningDelegate.h"
@interface ViewController0 ()
{
    CGPoint  beginpoint;
}
@property(nonatomic,strong)UISwipeGestureRecognizer *rightGesture;

@end

@implementation ViewController0

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor brownColor];
    
    
    
    // [self.navigationController setNavigationBarHidden:YES animated:YES];
    
    self.rightGesture=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(tosecondviewcontroller:)];
    self.rightGesture.direction=UISwipeGestureRecognizerDirectionRight;
    [self.view addGestureRecognizer:self.rightGesture];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)tosecondviewcontroller:(UISwipeGestureRecognizer *)gwsture
{
    
    
    ViewController1 *newViewController=[[ViewController1 alloc]init];
    ADTransitionOrientation orein=ADTransitionLeftToRight;
    ADTransition * transition = [[ADSwipeTransition alloc] initWithDuration:1 orientation:orein sourceRect:self.view.frame];
    
    newViewController.transition=transition;
    
    //    newViewController.transition = transition;
    //    switch (gwsture.state) {
    //        case UIGestureRecognizerStateBegan:
    //            NSLog(@"teBegan");
    //            break;
    //        case UIGestureRecognizerStateChanged:
    //            NSLog(@"Changed");
    //
    //            break;
    //        case UIGestureRecognizerStateCancelled:
    //            NSLog(@"Cancelled");
    //
    //            break;
    //        case UIGestureRecognizerStateEnded:
    //            NSLog(@"Ended");
    //
    //            break;
    //
    //        default:
    //            break;
    //    }
    [self.navigationController pushViewController:newViewController animated:YES];
    
}

//-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
//    beginpoint=[touches locationInView:self.view]
//}
//
//-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
//
//}
//
//-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
//
//
//}






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

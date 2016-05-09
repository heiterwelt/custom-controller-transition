//
//  ViewController1.m
//  gesturetransition
//
//  Created by Linyou-IOS-1 on 16/5/9.
//  Copyright © 2016年 MuYou INTERACTIVE TECHNOLOGY LIMITED. All rights reserved.
//

#import "ViewController1.h"
#import "ViewController2.h"
#import "ADTransition.h"
#import "ADSwipeTransition.h"
#import "ADTransitioningDelegate.h"
#import "ViewController0.h"
#import "ADNavigationControllerDelegate.h"
@interface ViewController1 ()
{
    ADNavigationControllerDelegate * _navigationDelegate;
}
@property(nonatomic,strong)UISwipeGestureRecognizer *swipeleft;
@property(nonatomic,strong)UISwipeGestureRecognizer *swiperight;
@property(nonatomic,strong)ADTransition * transitiontofirst;
@property(nonatomic,strong)ADTransition * transitiontothird;
@end

@implementation ViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor redColor];
    self.swipeleft=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(tofisrtviewcontroller)];
    self.swipeleft.direction=UISwipeGestureRecognizerDirectionLeft;
    [self.view addGestureRecognizer:self.swipeleft];
    
    self.swiperight=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(tothirdtviewcontroller)];
    self.swiperight.direction=UISwipeGestureRecognizerDirectionRight;
    [self.view addGestureRecognizer:self.swiperight];
    
    //  [self.navigationController setNavigationBarHidden:NO animated:YES];
    
    // Do any additional setup after loading the view.
}

-(void)tofisrtviewcontroller
{
    
    ViewController0 *vc=[[ViewController0 alloc]init];
    self.transitiontofirst = [[ADSwipeTransition alloc] initWithDuration:1 orientation:ADTransitionRightToLeft sourceRect:self.view.frame];
    vc.transition=self.transitiontofirst;
    [self.navigationController popViewControllerAnimated:YES];
}

-(void)tothirdtviewcontroller
{
    ViewController2 *vc=[[ViewController2 alloc]init];
    self.transitiontothird = [[ADSwipeTransition alloc] initWithDuration:1 orientation:ADTransitionLeftToRight sourceRect:self.view.frame];
    //    _navigationDelegate=[[ADNavigationControllerDelegate alloc]init];
    //    self.navigationController.delegate=_navigationDelegate;
    //
    
    vc.transition=self.transitiontothird;
    [self.navigationController pushViewController:vc animated:YES];
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

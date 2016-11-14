//
//  ViewController.m
//  JQAlertViewDemo
//
//  Created by JiaQi on 2016/11/14.
//  Copyright © 2016年 任玉祥. All rights reserved.
//

#import "ViewController.h"
#import "JQAlertView.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)show
{
    JQAlertView *alertView = [JQAlertView alertViewWithTitle:@"JQAlertViewDemo Title" message:@"This Is JQAlertViewDemo Message" preferredStyle:JQAlertControllerStyleActionSheet];
    
    JQAlertAction *action1 = [JQAlertAction actionWithTitle:@"1" style:JQAlertActionStyleDefault handler:^(JQAlertAction * _Nonnull action) {
        NSLog(@"default action");
    }];
    
    JQAlertAction *action2 = [JQAlertAction actionWithTitle:@"2" style:JQAlertActionStyleCancel handler:^(JQAlertAction * _Nonnull action) {
        NSLog(@"cancel action");
    }];
    
    JQAlertAction *action3 = [JQAlertAction actionWithTitle:@"3" style:JQAlertActionStyleDestructive handler:^(JQAlertAction * _Nonnull action) {
        NSLog(@"destructive action");
    }];
    
    [alertView addActions:@[action1, action2, action3]];
    [alertView show];

}


@end

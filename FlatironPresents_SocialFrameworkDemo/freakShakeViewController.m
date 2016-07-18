//
//  freakShakeViewController.m
//  FlatironPresents_SocialFrameworkDemo
//
//  Created by Betty Fung on 7/17/16.
//  Copyright © 2016 Betty Fung. All rights reserved.
//

#import "freakShakeViewController.h"

@implementation freakShakeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.freakShakeImage.image = [UIImage imageNamed:@"freakshake.jpg"];
    self.freakShakeImage.contentMode = UIViewContentModeScaleAspectFit;
}

@end

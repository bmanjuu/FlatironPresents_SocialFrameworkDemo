//
//  freakShakeViewController.m
//  FlatironPresents_SocialFrameworkDemo
//
//  Created by Betty Fung on 7/17/16.
//  Copyright © 2016 Betty Fung. All rights reserved.
//

#import "freakShakeViewController.h"
#import <Social/Social.h>

@implementation freakShakeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.freakShakeImage.image = [UIImage imageNamed:@"freakshake.jpg"];
    self.freakShakeImage.contentMode = UIViewContentModeScaleAspectFit;
}
- (IBAction)postToFacebook:(id)sender {
    
    if([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook]) {
        
        
        SLComposeViewController *controller = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
        
        [controller addImage:[UIImage imageNamed:@"freakshake.jpg"]];
        
        [self presentViewController:controller animated:YES completion:Nil];
        
    }
    
}



- (IBAction)postToTwitter:(id)sender {
    
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter]) {
        
        SLComposeViewController *tweetSheet = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
        
        [tweetSheet addImage:[UIImage imageNamed:@"freakshake.jpg"]];
        
        [self presentViewController:tweetSheet animated:YES completion:nil];
        
    }
}

@end

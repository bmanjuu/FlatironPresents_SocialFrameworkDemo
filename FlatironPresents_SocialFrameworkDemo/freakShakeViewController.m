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
        
        
        //[controller addURL:[NSURL URLWithString:@"http://www.patissez.com.au/"]];
        [controller addImage:[UIImage imageNamed:@"freakshake.jpg"]];
        
        // can only do one per post for facebook
        //when URL and image are both present, URL takes precedence (doesn't matter if it's before or after the image)
        
        [self presentViewController:controller animated:YES completion:Nil];
        
    }
    
}



- (IBAction)postToTwitter:(id)sender {
    
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter]) {
        
        SLComposeViewController *tweetSheet = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
        
        [tweetSheet addImage:[UIImage imageNamed:@"freakshake.jpg"]];
        [tweetSheet addURL:[NSURL URLWithString:@"http://www.patissez.com.au/"]];
        [tweetSheet setInitialText:@"My milkshake brings all the Pokemon to the yard"];
        //twitter can do all three at the same time! 
        
        [self presentViewController:tweetSheet animated:YES completion:nil];
        
    }
}

@end

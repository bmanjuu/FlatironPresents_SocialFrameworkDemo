//
//  naptimeMemeViewController.m
//  FlatironPresents_SocialFrameworkDemo
//
//  Created by Betty Fung on 7/17/16.
//  Copyright © 2016 Betty Fung. All rights reserved.
//

#import "naptimeMemeViewController.h"
#import <Social/Social.h>

@implementation naptimeMemeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.naptimeMemeImage.image = [UIImage imageNamed:@"naptimeMeme.jpg"];
    self.naptimeMemeImage.contentMode = UIViewContentModeScaleAspectFit;
}
- (IBAction)postToFacebook:(id)sender {
    
    if([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook]) {
        
        SLComposeViewController *controller = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
        
        [controller addImage:[UIImage imageNamed:@"naptimeMeme.jpg"]];
    
        [self presentViewController:controller animated:YES completion:Nil];
        
    }
    
    
}
- (IBAction)postToTwitter:(id)sender {
    
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter]) {
        
        SLComposeViewController *tweetSheet = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
        
        [tweetSheet addImage:[UIImage imageNamed:@"naptimeMeme.jpg"]];
        
        [self presentViewController:tweetSheet animated:YES completion:nil];
        
    }
}

@end

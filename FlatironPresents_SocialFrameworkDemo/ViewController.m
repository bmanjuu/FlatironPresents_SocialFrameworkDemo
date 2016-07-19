//
//  ViewController.m
//  FlatironPresents_SocialFrameworkDemo
//
//  Created by Betty Fung on 7/16/16.
//  Copyright © 2016 Betty Fung. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
    //image sources
    //freakshake image
//    NSData *freakshake = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"https://scontent-lga3-1.cdninstagram.com/t51.2885-15/s750x750/sh0.08/e35/12918017_215917625457787_361844434_n.jpg?ig_cache_key=MTIzNzU0NDg2OTQ2NDg0NDc3NA%3D%3D.2"]];
//    UIImage *freakShakeImage = [UIImage imageWithData:freakshake];
//    
//    //unspirational image
//    NSData *adultingStruggles = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"https://scontent-lga3-1.cdninstagram.com/t51.2885-15/s480x480/e35/13658589_1113138265427131_321430007_n.jpg?ig_cache_key=MTI5MjMwODExNDA2MTc5MzA2Mw%3D%3D.2"]];
//    UIImage *adultingStrugglesImage = [UIImage imageWithData:adultingStruggles];
//    
//    //pokemon go meme
//    NSData *pokemonGoMeme = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"https://img.buzzfeed.com/buzzfeed-static/static/2016-07/10/22/asset/buzzfeed-prod-web14/sub-buzz-21306-1468203471-1.png?no-auto"]];
//    UIImage *pokemonGo = [UIImage imageWithData:pokemonGoMeme];
    // Do any additional setup after loading the view, typically from a nib.
}

//MARK - button methods
//- (IBAction)tweetButtonTapped:(id)sender {
//    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter])
//    {
//        SLComposeViewController *tweetfromApp = [SLComposeViewController
//                                                 composeViewControllerForServiceType:SLServiceTypeTwitter];
//        //        [tweetSheet setInitialText:@"This is our first Tweet from our first Ios app, yaya!!!"];
//        [tweetfromApp addURL:[NSURL URLWithString:@"https://scontent-lga3-1.cdninstagram.com/t51.2885-15/s480x480/e35/13658589_1113138265427131_321430007_n.jpg?ig_cache_key=MTI5MjMwODExNDA2MTc5MzA2Mw%3D%3D.2"]];
//        [self presentViewController:tweetfromApp animated:YES completion:nil];
//    }
//}
//- (IBAction)facebookButtonTapped:(id)sender {
//    if([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook]) {
//        SLComposeViewController *controller = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
//        //        [controller addImage:[UIImage imageNamed:@"socialsharing-facebook-image.jpg"]]
//        [controller addURL:[NSURL URLWithString:@"https://scontent-lga3-1.cdninstagram.com/t51.2885-15/s480x480/e35/13658589_1113138265427131_321430007_n.jpg?ig_cache_key=MTI5MjMwODExNDA2MTc5MzA2Mw%3D%3D.2"]];
//        //        [controller setInitialText:@"This is our first facebook Post from our Ios app, yaya!!!"];
//        [self presentViewController:controller animated:YES completion:Nil];
//    }
//}
//- (IBAction)pinButtonTapped:(id)sender {
//}



//- (IBAction)postToFacebook:(id)sender {
//    
//    if([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook]) {
//        
//        SLComposeViewController *controller = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
//        
//        [controller addImage:[UIImage imageNamed:@"IMAGE_NAME"]];
//        
//        [self presentViewController:controller animated:YES completion:Nil];
//        
//    }
//    
//}
//
//
//
//- (IBAction)postToTwitter:(id)sender {
//    
//    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter]) {
//        
//        SLComposeViewController *tweetSheet = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
//        
//        [tweetSheet addImage:[UIImage imageNamed:@"IMAGE_NAME"]];
//        
//        [self presentViewController:tweetSheet animated:YES completion:nil];
//        
//    }
//    
//}

//[controller addImage:[UIImage imageNamed:@"imageNameHere.jpg"]];
////can also be .png
//
//[controller setInitialText:@"Default text here!"];
//
//[controller addURL:[NSURL URLWithString:@"URL link here!"]];



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

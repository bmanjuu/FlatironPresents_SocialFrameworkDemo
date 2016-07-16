//
//  ViewController.m
//  FlatironPresents_SocialFrameworkDemo
//
//  Created by Betty Fung on 7/16/16.
//  Copyright © 2016 Betty Fung. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *awesomeImage;
@property (weak, nonatomic) IBOutlet UIButton *tweetButton;
@property (weak, nonatomic) IBOutlet UIButton *pinButton;
@property (weak, nonatomic) IBOutlet UIButton *facebookButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //MARK - code for images
    
    //freakshake image
//    NSData *freakshake = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"https://scontent-lga3-1.cdninstagram.com/t51.2885-15/s750x750/sh0.08/e35/12918017_215917625457787_361844434_n.jpg?ig_cache_key=MTIzNzU0NDg2OTQ2NDg0NDc3NA%3D%3D.2"]];
//    UIImage *freakShakeImage = [UIImage imageWithData:freakshake];
//    [self.awesomeImage setImage:freakShakeImage];
    
    
    //unspirational image
//    NSData *adultingStruggles = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"https://scontent-lga3-1.cdninstagram.com/t51.2885-15/s480x480/e35/13658589_1113138265427131_321430007_n.jpg?ig_cache_key=MTI5MjMwODExNDA2MTc5MzA2Mw%3D%3D.2"]];
//    UIImage *adultingStrugglesImage = [UIImage imageWithData:adultingStruggles];
//    [self.awesomeImage setImage:adultingStrugglesImage];
    
    
    //pokemon go meme
    NSData *pokemonGoMeme = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"https://img.buzzfeed.com/buzzfeed-static/static/2016-07/10/22/asset/buzzfeed-prod-web14/sub-buzz-21306-1468203471-1.png?no-auto"]];
    UIImage *pokemonGo = [UIImage imageWithData:pokemonGoMeme];
    [self.awesomeImage setImage:pokemonGo];
    
    
    //scales the picture to fit the screen/view! exciting stuff!! :)
    self.awesomeImage.contentMode = UIViewContentModeScaleAspectFit;
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)tweetButtonTapped:(id)sender {
}
- (IBAction)pinButtonTapped:(id)sender {
}
- (IBAction)facebookButtonTapped:(id)sender {
}

//IMAGES USED:
//freakshake from Patissez (Canberra, Australia): image taken from their instagram account: @"https://scontent-lga3-1.cdninstagram.com/t51.2885-15/s750x750/sh0.08/e35/12918017_215917625457787_361844434_n.jpg?ig_cache_key=MTIzNzU0NDg2OTQ2NDg0NDc3NA%3D%3D.2"
//adulting meme from @unspirational instagram: @"https://scontent-lga3-1.cdninstagram.com/t51.2885-15/s480x480/e35/13658589_1113138265427131_321430007_n.jpg?ig_cache_key=MTI5MjMwODExNDA2MTc5MzA2Mw%3D%3D.2"
//pokemongo meme: @"http://i.imgur.com/ohCOFND.gif"

@end

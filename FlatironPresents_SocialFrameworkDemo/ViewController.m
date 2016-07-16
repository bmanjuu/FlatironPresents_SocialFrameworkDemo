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

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //MARK - code for images
    
    //freakshake image
    NSData *awesomeImageLinkAndData = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"https://scontent-lga3-1.cdninstagram.com/t51.2885-15/s480x480/e35/13658589_1113138265427131_321430007_n.jpg?ig_cache_key=MTI5MjMwODExNDA2MTc5MzA2Mw%3D%3D.2"]];
    UIImage *image = [UIImage imageWithData:awesomeImageLinkAndData];
    [self.awesomeImage setImage:image];
    self.awesomeImage.contentMode = UIViewContentModeScaleAspectFit; //scales the picture to fit the screen/view! exciting stuff!! :)
    
    
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

//IMAGES USED:
//freakshake from Patissez (Canberra, Australia): image taken from their instagram account: @"https://scontent-lga3-1.cdninstagram.com/t51.2885-15/s750x750/sh0.08/e35/12918017_215917625457787_361844434_n.jpg?ig_cache_key=MTIzNzU0NDg2OTQ2NDg0NDc3NA%3D%3D.2"
//adulting meme from @unspirational instagram: @"https://scontent-lga3-1.cdninstagram.com/t51.2885-15/s480x480/e35/13658589_1113138265427131_321430007_n.jpg?ig_cache_key=MTI5MjMwODExNDA2MTc5MzA2Mw%3D%3D.2"
//drake throwing pokeball at a pidgey: @"http://i.imgur.com/ohCOFND.gif"

@end

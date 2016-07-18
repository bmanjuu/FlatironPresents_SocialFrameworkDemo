//
//  pokemonGoMemeViewController.m
//  
//
//  Created by Betty Fung on 7/17/16.
//
//

#import "pokemonGoMemeViewController.h"
#import <Social/Social.h>

@implementation pokemonGoMemeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.pokemonGoMemeImage.image = [UIImage imageNamed:@"pokemonGoMeme.png"];
    self.pokemonGoMemeImage.contentMode = UIViewContentModeScaleAspectFit;
}
- (IBAction)postToFacebook:(id)sender {
    
    if([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook]) {
        
        SLComposeViewController *controller = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
        
        [controller addImage:[UIImage imageNamed:@"pokemonGoMeme.png"]];
        
        [self presentViewController:controller animated:YES completion:Nil];
        
    }
    
}
- (IBAction)postToTwitter:(id)sender {
    
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter]) {
        
        SLComposeViewController *tweetSheet = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
        
        [tweetSheet addImage:[UIImage imageNamed:@"pokemonGoMeme.jpg"]];
        
        [self presentViewController:tweetSheet animated:YES completion:nil];
        
    }
    
}


@end

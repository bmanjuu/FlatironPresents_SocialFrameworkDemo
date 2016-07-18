//
//  pokemonGoMemeViewController.m
//  
//
//  Created by Betty Fung on 7/17/16.
//
//

#import "pokemonGoMemeViewController.h"

@implementation pokemonGoMemeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.pokemonGoMemeImage.image = [UIImage imageNamed:@"pokemonGoMeme.png"];
    self.pokemonGoMemeImage.contentMode = UIViewContentModeScaleAspectFit;
}

@end

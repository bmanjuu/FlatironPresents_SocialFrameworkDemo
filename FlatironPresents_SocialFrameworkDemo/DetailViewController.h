//
//  DetailViewController.h
//  FlatironPresents_SocialFrameworkDemo
//
//  Created by Betty Fung on 7/16/16.
//  Copyright © 2016 Betty Fung. All rights reserved.
//

#import "ViewController.h"
#import "OurImageTableViewCell.h"


@interface DetailViewController : ViewController

@property (weak, nonatomic) IBOutlet UIImageView *userSelectedImage;
@property (weak, nonatomic) OurImageTableViewCell *selectedImageViewCell;
@property (nonatomic) NSUInteger selectedImageIndex; 

@end

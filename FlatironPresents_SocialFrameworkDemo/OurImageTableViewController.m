//
//  OurImageTableViewController.m
//  FlatironPresents_SocialFrameworkDemo
//
//  Created by Betty Fung on 7/16/16.
//  Copyright © 2016 Betty Fung. All rights reserved.
//

#import "OurImageTableViewController.h"
#import "OurImageTableViewCell.h"
#import "DetailViewController.h"

@implementation OurImageTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.images = [[NSMutableArray alloc] init]; //need to initialize array first
    
    //adding images to array
    [self.images addObject:[UIImage imageNamed:@"freakshake.jpg"]];
    [self.images addObject:[UIImage imageNamed:@"naptimeMeme.jpg"]];
    [self.images addObject:[UIImage imageNamed:@"pokemonGoMeme.png"]];
    
    // NSLog(@"number of images: %lu", self.images.count);
    
    // Do any additional setup after loading the view, typically from a nib.
}


//MARK - tableview stuff
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.images.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    OurImageTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"imageCell" forIndexPath:indexPath];
    cell.awesomeImageView.image = self.images[indexPath.row];
    cell.awesomeImageView.contentMode = UIViewContentModeScaleAspectFit; //this makes the image fit within the space of the row, want to have the row expand to fit the image! can use this for the detail view controller (for the imageView named selectedImage)
    
    //add self-sizing table view cells stuff here too :)
    
    return cell;
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    //tableviewcell is the sender
    
    DetailViewController *detailVC = (DetailViewController *)segue.destinationViewController;
    
    NSIndexPath *selectedIndexPath = [self.tableView indexPathForSelectedRow];
    
    OurImageTableViewCell *selectedCell = (OurImageTableViewCell *)sender;
    
    detailVC.userSelectedImage.image = selectedCell.imageView.image;
    detailVC.selectedImageIndex = selectedIndexPath.row;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end


//MARK - IMAGES USED:
//freakshake from Patissez (Canberra, Australia): image taken from their instagram account: @"https://scontent-lga3-1.cdninstagram.com/t51.2885-15/s750x750/sh0.08/e35/12918017_215917625457787_361844434_n.jpg?ig_cache_key=MTIzNzU0NDg2OTQ2NDg0NDc3NA%3D%3D.2"
//adulting meme from @unspirational instagram: @"https://scontent-lga3-1.cdninstagram.com/t51.2885-15/s480x480/e35/13658589_1113138265427131_321430007_n.jpg?ig_cache_key=MTI5MjMwODExNDA2MTc5MzA2Mw%3D%3D.2"
//pokemongo meme: @"https://img.buzzfeed.com/buzzfeed-static/static/2016-07/10/22/asset/buzzfeed-prod-web14/sub-buzz-21306-1468203471-1.png?no-auto"

//
//  ViewController.m
//  FlatironPresents_SocialFrameworkDemo
//
//  Created by Betty Fung on 7/16/16.
//  Copyright © 2016 Betty Fung. All rights reserved.
//

#import "ViewController.h"
#import "PDKBoard.h"
#import <Social/Social.h>



@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *tweetButton;
@property (weak, nonatomic) IBOutlet UIButton *pinButton;
@property (weak, nonatomic) IBOutlet UIButton *facebookButton;
@property (strong, nonatomic) NSMutableArray *images;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //MARK - code for images
    
    //freakshake image
    NSData *freakshake = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"https://scontent-lga3-1.cdninstagram.com/t51.2885-15/s750x750/sh0.08/e35/12918017_215917625457787_361844434_n.jpg?ig_cache_key=MTIzNzU0NDg2OTQ2NDg0NDc3NA%3D%3D.2"]];
    UIImage *freakShakeImage = [UIImage imageWithData:freakshake];
//    [self.awesomeImage setImage:freakShakeImage];
    
    
    //unspirational image
    NSData *adultingStruggles = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"https://scontent-lga3-1.cdninstagram.com/t51.2885-15/s480x480/e35/13658589_1113138265427131_321430007_n.jpg?ig_cache_key=MTI5MjMwODExNDA2MTc5MzA2Mw%3D%3D.2"]];
    UIImage *adultingStrugglesImage = [UIImage imageWithData:adultingStruggles];
//    [self.awesomeImage setImage:adultingStrugglesImage];
    
    
    //pokemon go meme
    NSData *pokemonGoMeme = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"https://img.buzzfeed.com/buzzfeed-static/static/2016-07/10/22/asset/buzzfeed-prod-web14/sub-buzz-21306-1468203471-1.png?no-auto"]];
    UIImage *pokemonGo = [UIImage imageWithData:pokemonGoMeme];
    // [self.awesomeImage setImage:pokemonGo];
    
    [self.images addObject:freakShakeImage];
    [self.images addObject:adultingStrugglesImage];
    [self.images addObject:pokemonGo];
    
    //scales the picture to fit the screen/view! exciting stuff!! :)
    // self.awesomeImage.contentMode = UIViewContentModeScaleAspectFit;
    
    // Do any additional setup after loading the view, typically from a nib.
}

//MARK - button methods
- (IBAction)tweetButtonTapped:(id)sender {
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter])
    {
        SLComposeViewController *tweetfromApp = [SLComposeViewController
                                                 composeViewControllerForServiceType:SLServiceTypeTwitter];
        //        [tweetSheet setInitialText:@"This is our first Tweet from our first Ios app, yaya!!!"];
        [tweetfromApp addURL:[NSURL URLWithString:@"https://scontent-lga3-1.cdninstagram.com/t51.2885-15/s480x480/e35/13658589_1113138265427131_321430007_n.jpg?ig_cache_key=MTI5MjMwODExNDA2MTc5MzA2Mw%3D%3D.2"]];
        [self presentViewController:tweetfromApp animated:YES completion:nil];
    }
}
- (IBAction)facebookButtonTapped:(id)sender {
    if([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook]) {
        SLComposeViewController *controller = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
        //        [controller addImage:[UIImage imageNamed:@"socialsharing-facebook-image.jpg"]]
        [controller addURL:[NSURL URLWithString:@"https://scontent-lga3-1.cdninstagram.com/t51.2885-15/s480x480/e35/13658589_1113138265427131_321430007_n.jpg?ig_cache_key=MTI5MjMwODExNDA2MTc5MzA2Mw%3D%3D.2"]];
        //        [controller setInitialText:@"This is our first facebook Post from our Ios app, yaya!!!"];
        [self presentViewController:controller animated:YES completion:Nil];
    }
}
- (IBAction)pinButtonTapped:(id)sender {
}

//MARK - tableview stuff
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.images.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"coolImage" forIndexPath:indexPath];
    
    cell.imageView.image = self.images[indexPath.row]; //change this to image stuff
    
    //add self-sizing table view cells stuff here too :)
    
    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//PINTEREST - code
//IDEA -- since these methods refer to tableviews, we can use a tableview to represent all 3 pictures 
//- (void)createPinOnBoard:(PDKBoard *)board
//{
//    // If creating a pin from a URL, show a alert with a text field for the url and one for the pin description
//    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Create Pin" message:nil preferredStyle:UIAlertControllerStyleAlert];
//    [alertController addTextFieldWithConfigurationHandler:^(UITextField *textField) {
//        textField.placeholder = NSLocalizedString(@"Pin Image URL", nil);
//    }];
//    
//    [alertController addTextFieldWithConfigurationHandler:^(UITextField *textField) {
//        textField.placeholder = NSLocalizedString(@"Pin Source URL", nil);
//    }];
//    
//    [alertController addTextFieldWithConfigurationHandler:^(UITextField *textField) {
//        textField.placeholder = NSLocalizedString(@"Pin Description", nil);
//    }];
//    
//    __weak PDKBoardsViewController *weakSelf = self;
//    PDKBoardCell *cell = (PDKBoardCell *)[self.tableView cellForRowAtIndexPath:self.boardIndexPath];
//    
//    [cell enableButtons:NO];
//    
//    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
//        NSString *imageURLString = [alertController.textFields[0] text];
//        NSString *linkURLString = [alertController.textFields[1] text];
//        NSString *description = [alertController.textFields[2] text];
//        
//        if ([imageURLString length] && [description length]) {
//            [cell showSpinner:YES withPercentage:-1];
//            [[PDKClient sharedInstance] createPinWithImageURL:[NSURL URLWithString:imageURLString]
//                                                         link:[NSURL URLWithString:linkURLString]
//                                                      onBoard:board.identifier
//                                                  description:description
//                                                  withSuccess:^(PDKResponseObject *responseObject) {
//                                                      [cell enableButtons:YES];
//                                                      [cell showSpinner:NO withPercentage:0];
//                                                      
//                                                      if ([responseObject isValid]) {
//                                                          [weakSelf showTemporaryAlertWithTitle:NSLocalizedString(@"Pin Created!", nil) message:nil];
//                                                      }
//                                                  } andFailure:^(NSError *error){
//                                                      [weakSelf showTemporaryAlertWithTitle:NSLocalizedString(@"Error!", nil) message:[error description]];
//                                                      [cell enableButtons:YES];
//                                                      [cell showSpinner:NO withPercentage:0];
//                                                  }];
//        }
//        
//    }];
//    
//    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleDestructive handler:nil];
//    [alertController addAction:ok];
//    [alertController addAction:cancel];
//    [self presentViewController:alertController animated:YES completion:nil];
//}
//
//- (void)createPinWithImage:(UIImage *)image onBoard:(PDKBoard *)board
//{
//    // create a description for the choosen image and pin it.
//    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Add Description" message:nil preferredStyle:UIAlertControllerStyleAlert];
//    [alertController addTextFieldWithConfigurationHandler:^(UITextField *textField) {
//        textField.placeholder = NSLocalizedString(@"Pin Description", nil);
//    }];
//    
//    [alertController addTextFieldWithConfigurationHandler:^(UITextField *textField) {
//        textField.placeholder = NSLocalizedString(@"Pin Source URL", nil);
//    }];
//    
//    __weak PDKBoardsViewController *weakSelf = self;
//    PDKBoardCell *cell = (PDKBoardCell *)[self.tableView cellForRowAtIndexPath:self.boardIndexPath];
//    [cell enableButtons:NO];
//    
//    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
//        NSString *description = [alertController.textFields[0] text];
//        NSString *linkURLString = [alertController.textFields[1] text];
//        
//        if ([description length]) {
//            [[PDKClient sharedInstance] createPinWithImage:image
//                                                      link:[NSURL URLWithString:linkURLString]
//                                                   onBoard:board.identifier
//                                               description:description
//                                                  progress:^(CGFloat percentComplete) {
//                                                      [cell showSpinner:YES withPercentage:percentComplete];
//                                                  }
//                                               withSuccess:^(PDKResponseObject *responseObject) {
//                                                   
//                                                   [cell enableButtons:YES];
//                                                   [cell showSpinner:NO withPercentage:0];
//                                                   
//                                                   if ([responseObject isValid]) {
//                                                       [weakSelf showTemporaryAlertWithTitle:NSLocalizedString(@"Pin Created!", nil) message:nil];
//                                                   }
//                                               } andFailure:^(NSError *error) {
//                                                   [weakSelf showTemporaryAlertWithTitle:NSLocalizedString(@"Error!", nil) message:[error description]];
//                                                   [cell enableButtons:YES];
//                                                   [cell showSpinner:NO withPercentage:0];
//                                               }];
//        }
//        
//    }];
//    
//    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleDestructive handler:nil];
//    [alertController addAction:ok];
//    [alertController addAction:cancel];
//    [self presentViewController:alertController animated:YES completion:nil];
//}

//MARK - IMAGES USED:
//freakshake from Patissez (Canberra, Australia): image taken from their instagram account: @"https://scontent-lga3-1.cdninstagram.com/t51.2885-15/s750x750/sh0.08/e35/12918017_215917625457787_361844434_n.jpg?ig_cache_key=MTIzNzU0NDg2OTQ2NDg0NDc3NA%3D%3D.2"
//adulting meme from @unspirational instagram: @"https://scontent-lga3-1.cdninstagram.com/t51.2885-15/s480x480/e35/13658589_1113138265427131_321430007_n.jpg?ig_cache_key=MTI5MjMwODExNDA2MTc5MzA2Mw%3D%3D.2"
//pokemongo meme: @"https://img.buzzfeed.com/buzzfeed-static/static/2016-07/10/22/asset/buzzfeed-prod-web14/sub-buzz-21306-1468203471-1.png?no-auto"

@end

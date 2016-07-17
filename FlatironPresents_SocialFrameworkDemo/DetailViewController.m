//
//  DetailViewController.m
//  FlatironPresents_SocialFrameworkDemo
//
//  Created by Betty Fung on 7/16/16.
//  Copyright © 2016 Betty Fung. All rights reserved.
//

#import "DetailViewController.h"
#import "ViewController.h"

@interface DetailViewController ()

@property (weak, nonatomic) IBOutlet UIButton *tweetButton;
@property (weak, nonatomic) IBOutlet UIButton *pinButton;
@property (weak, nonatomic) IBOutlet UIButton *facebookButton;
@property (weak, nonatomic) IBOutlet UIImageView *selectedImage;

@end

@implementation DetailViewController

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


@end

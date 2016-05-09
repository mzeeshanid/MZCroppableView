//
//  MZViewController.m
//  MZCroppableView
//
//  Created by Muhammad Zeeshan on 05/06/2016.
//  Copyright (c) 2016 Muhammad Zeeshan. All rights reserved.
//

#import "MZViewController.h"
#import "MZResultViewController.h"
#import "MZCroppableView.h"

@interface MZViewController ()
{
    IBOutlet UIImageView *croppingImageView;
    
    MZCroppableView *mzCroppableView;
    
    BOOL viewLoaded;
}
@end

@implementation MZViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    viewLoaded = YES;
    
    [croppingImageView setImage:[UIImage imageNamed:@"cropping_sample.JPG"]];
    CGRect rect1 = CGRectMake(0, 0, croppingImageView.image.size.width, croppingImageView.image.size.height);
    CGRect rect2 = croppingImageView.frame;
    [croppingImageView setFrame:[MZCroppableView scaleRespectAspectFromRect1:rect1 toRect2:rect2]];
    
    [self setUpMZCroppableView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - My Methods -

- (void)setUpMZCroppableView {
    [mzCroppableView removeFromSuperview];
    mzCroppableView = [[MZCroppableView alloc] initWithImageView:croppingImageView];
    [self.view addSubview:mzCroppableView];
}
#pragma mark - My IBActions -

- (IBAction)resetButtonTapped:(UIBarButtonItem *)sender {
    [self setUpMZCroppableView];
}
- (IBAction)cropButtonTapped:(UIBarButtonItem *)sender {
    
    UIImage *croppedImage = [mzCroppableView deleteBackgroundOfImage:croppingImageView];
    
    NSString *storyboarId = NSStringFromClass([MZResultViewController class]);
    MZResultViewController *resultViewController = [self.storyboard instantiateViewControllerWithIdentifier:storyboarId];
    [resultViewController setCroppedImage:croppedImage];
    [self.navigationController pushViewController:resultViewController animated:YES];
}
@end

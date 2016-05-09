//
//  MZResultViewController.m
//  MZCroppableView
//
//  Created by Muhammad Zeeshan on 06/05/2016.
//  Copyright © 2016 Muhammad Zeeshan. All rights reserved.
//

#import "MZResultViewController.h"

@interface MZResultViewController ()
{
    IBOutlet UIImageView *imageView;
}
@end

@implementation MZResultViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [imageView setImage:_croppedImage];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

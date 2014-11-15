//
//  BLCMainMenuViewController.m
//  Calcohol
//
//  Created by Peter Shultz on 11/13/14.
//  Copyright (c) 2014 Bloc. All rights reserved.
//

#import "BLCMainMenuViewController.h"
#import "BLCViewController.h"
#import "BLCWhiskeyViewController.h"

@interface BLCMainMenuViewController ()

@property (weak, nonatomic) UIButton *wineButton;
@property (weak, nonatomic) UIButton *whiskeyButton;

@end


@implementation BLCMainMenuViewController

- (void)loadView {
    // Allocate and initialize the all-encompassing view
    self.view = [[UIView alloc] init];
    
    // Allocate and initialize each of our views and the gesture recognizer

    UIButton *wineButton = [UIButton buttonWithType:UIButtonTypeSystem];
    UIButton *whiskeyButton = [UIButton buttonWithType:UIButtonTypeSystem];

    self.wineButton = wineButton;
    self.whiskeyButton = whiskeyButton;

    [self.view addSubview:wineButton];
    [self.view addSubview:whiskeyButton];


}

- (void) viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    
    CGSize screen = [UIScreen mainScreen].bounds.size;
    
    CGFloat viewWidth = screen.width;
    CGFloat padding = 20;
    CGFloat itemWidth = viewWidth - padding - padding;
    CGFloat itemHeight = 44;
    
    
    self.wineButton.frame = CGRectMake(padding, 100, itemWidth, itemHeight);
    self.whiskeyButton.frame = CGRectMake(screen.width-padding-itemWidth, 225, itemWidth, itemHeight);
    
}

- (void)viewDidLoad
{
    // Calls the superclass's implementation
    [super viewDidLoad];
    
    // Set our primary view's background color to lightGrayColor
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    [self.wineButton setTitle:NSLocalizedString(@"Wine", @"Calculate command") forState:UIControlStateNormal];
    [self.whiskeyButton setTitle:NSLocalizedString(@"Whiskey", @"Calculate command") forState:UIControlStateNormal];
    
    
    [self.wineButton addTarget:self action:@selector(winePressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.whiskeyButton addTarget:self action:@selector(whiskeyPressed:) forControlEvents:UIControlEventTouchUpInside];

}


- (void) winePressed:(UIButton *) sender {
    BLCViewController *wineVC = [[BLCViewController alloc] init];
    [self.navigationController pushViewController:wineVC animated:YES];
}

- (void) whiskeyPressed:(UIButton *) sender {
    BLCWhiskeyViewController *whiskeyVC = [[BLCWhiskeyViewController alloc] init];
    [self.navigationController pushViewController:whiskeyVC animated:YES];
}

@end

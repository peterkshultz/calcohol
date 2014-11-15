
//
//  ViewController.h
//  Calcohol
//
//  Created by Peter Shultz on 11/3/14.
//  Copyright (c) 2014 Bloc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BLCViewController : UIViewController


@property (weak, nonatomic) UITextField *beerPercentTextField;
@property (weak, nonatomic) UILabel *resultLabel;
@property (weak, nonatomic) UISlider *beerCountSlider;

@property (strong, nonatomic) NSString* unitOfMeasure;
@property (strong, nonatomic) NSString* unitOfMeasurePlural;

- (void)buttonPressed:(UIButton *)sender;

@end


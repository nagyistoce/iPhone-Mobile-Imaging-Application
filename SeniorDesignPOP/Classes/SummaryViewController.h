//
//  SummaryViewController.h
//  SeniorDesignPOP
//
//  Created by Taylor Guidon on 3/29/11.
//  Copyright 2011 George Washington University. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SummaryViewController : UIViewController 
			<UIAlertViewDelegate> {
	IBOutlet UILabel *completion;
	IBOutlet UILabel *imageOneLabel;
	IBOutlet UILabel *imageTwoLabel;
	IBOutlet UILabel *imageThreeLabel;
	IBOutlet UILabel *imageFourLabel;
	IBOutlet UILabel *imageFiveLabel;
	IBOutlet UILabel *imageSixLabel;
	IBOutlet UILabel *imageSevenLabel;
	IBOutlet UILabel *imageEightLabel;
	IBOutlet UILabel *imageNineLabel;
	IBOutlet UILabel *imageTenLabel;
	IBOutlet UIScrollView *theScroller;
	NSString *calibrated;
	NSString *imageOneResult;
	NSString *imageTwoResult;
	NSString *imageThreeResult;
	NSString *imageFourResult;
	NSString *imageFiveResult;
	NSString *imageSixResult;
	NSString *imageSevenResult;
	NSString *imageEightResult;
	NSString *imageNineResult;
	NSString *imageTenResult;
}

@property (nonatomic, retain) UILabel *completion;
@property (nonatomic, retain) UIScrollView *theScroller;

@property (nonatomic, retain) UILabel *imageOneLabel;
@property (nonatomic, retain) UILabel *imageTwoLabel;
@property (nonatomic, retain) UILabel *imageThreeLabel;
@property (nonatomic, retain) UILabel *imageFourLabel;
@property (nonatomic, retain) UILabel *imageFiveLabel;
@property (nonatomic, retain) UILabel *imageSixLabel;
@property (nonatomic, retain) UILabel *imageSevenLabel;
@property (nonatomic, retain) UILabel *imageEightLabel;
@property (nonatomic, retain) UILabel *imageNineLabel;
@property (nonatomic, retain) UILabel *imageTenLabel;

-(void)blockSuccess;
-(void)blockReset;
-(void)imageOneSuccess;
-(void)imageTwoSuccess;
-(void)imageThreeSuccess;
-(void)imageFourSuccess;
-(void)imageFiveSuccess;
-(void)imageSixSuccess;
-(void)imageSevenSuccess;
-(void)imageEightSuccess;
-(void)imageNineSuccess;
-(void)imageTenSuccess;

@end

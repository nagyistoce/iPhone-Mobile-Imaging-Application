//
//  ImageTestViewController.h
//  SeniorDesignPOP
//
//  Created by Taylor Guidon on 3/29/11.
//  Copyright 2011 George Washington University. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <ImageIO/ImageIO.h>
#import "SummaryViewController.h"


@interface ImageTestViewController : UIViewController 
			<UIAlertViewDelegate> {
	IBOutlet UILabel *resultOne;
	IBOutlet UILabel *resultTwo;
	IBOutlet UILabel *resultThree;
	IBOutlet UILabel *resultFour;
	IBOutlet UILabel *resultFive;
				
	IBOutlet UIButton *generateOne;
	IBOutlet UIButton *generateTwo;
	IBOutlet UIButton *generateThree;
	IBOutlet UIButton *generateFour;
	IBOutlet UIButton *generateFive;
			
	IBOutlet UIScrollView *theScroller;
	
	IBOutlet SummaryViewController *summaryViewController;
}

-(IBAction)getDataOne:(id)sender;
-(IBAction)getDataTwo:(id)sender;
-(IBAction)getDataThree:(id)sender;
-(IBAction)getDataFour:(id)sender;
-(IBAction)getDataFive:(id)sender;

@property (nonatomic, retain) UILabel *resultOne;
@property (nonatomic, retain) UILabel *resultTwo;
@property (nonatomic, retain) UILabel *resultThree;
@property (nonatomic, retain) UILabel *resultFour;
@property (nonatomic, retain) UILabel *resultFive;


@property (nonatomic, retain) UIButton *generateOne;
@property (nonatomic, retain) UIButton *generateTwo;
@property (nonatomic, retain) UIButton *generateThree;
@property (nonatomic, retain) UIButton *generateFour;
@property (nonatomic, retain) UIButton *generateFive;

@property (nonatomic, retain) UIScrollView *theScroller;

@end

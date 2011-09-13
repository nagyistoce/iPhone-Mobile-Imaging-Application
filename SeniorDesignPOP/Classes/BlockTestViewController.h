//
//  BlockTestViewController.h
//  SeniorDesignPOP
//
//  Created by Taylor Guidon on 3/29/11.
//  Copyright 2011 George Washington University. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SummaryViewController.h"

@interface BlockTestViewController : UIViewController 
			<UIAlertViewDelegate> {
	IBOutlet UIButton *findMe;
	IBOutlet UIButton *go;
	IBOutlet UIButton *reset;
	IBOutlet UILabel *success;
	int successCount;
	
	IBOutlet SummaryViewController *summaryViewController;
}

@property (retain, nonatomic) UIButton *findMe;
@property (retain, nonatomic) UIButton *go;
@property (retain, nonatomic) UIButton *reset;
@property (retain, nonatomic) UILabel *success;

-(IBAction)foundMe:(id)sender;
-(IBAction)go:(id)sender;
-(IBAction)reset:(id)sender;

@end

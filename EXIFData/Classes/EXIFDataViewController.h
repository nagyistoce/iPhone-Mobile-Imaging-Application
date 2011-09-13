//
//  EXIFDataViewController.h
//  EXIFData
//
//  Created by Taylor Guidon on 3/28/11.
//  Copyright 2011 George Washington University. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <ImageIO/ImageIO.h>

@interface EXIFDataViewController : UIViewController {
	IBOutlet UILabel *result;
	IBOutlet UIButton *generate;
}

-(IBAction)getData:(id)sender;

@property (nonatomic, retain) UILabel *result;
@property (nonatomic, retain) UIButton *generate;

@end


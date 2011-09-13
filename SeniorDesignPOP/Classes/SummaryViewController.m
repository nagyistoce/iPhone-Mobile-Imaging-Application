//
//  SummaryViewController.m
//  SeniorDesignPOP
//
//  Created by Taylor Guidon on 3/29/11.
//  Copyright 2011 George Washington University. All rights reserved.
//

#import "SummaryViewController.h"

@implementation SummaryViewController

@synthesize completion;
@synthesize theScroller;

@synthesize imageOneLabel;
@synthesize imageTwoLabel;
@synthesize imageThreeLabel;
@synthesize imageFourLabel;
@synthesize imageFiveLabel;
@synthesize imageSixLabel;
@synthesize imageSevenLabel;
@synthesize imageEightLabel;
@synthesize imageNineLabel;
@synthesize imageTenLabel;


-(void)blockSuccess {
	calibrated = @"Yes!";
}

-(void)blockReset {
	calibrated = @"No!";
}

-(void)imageOneSuccess {
	imageOneResult = @"Yes!";
}

-(void)imageTwoSuccess {
	imageTwoResult = @"Yes!";
}

-(void)imageThreeSuccess {
	imageThreeResult = @"Yes!";
}

-(void)imageFourSuccess {
	imageFourResult = @"Yes!";
}

-(void)imageFiveSuccess {
	imageFiveResult = @"Yes!";
}

-(void)imageSixSuccess {
	imageSixResult = @"Yes!";
}

-(void)imageSevenSuccess {
	imageSevenResult = @"Yes!";
}

-(void)imageEightSuccess {
	imageEightResult = @"Yes!";
}

-(void)imageNineSuccess {
	imageNineResult = @"Yes!";
}

-(void)imageTenSuccess {
	imageTenResult = @"Yes!";
}

- (void)viewWillAppear:(BOOL)animated {
	
	//Block Test
	NSString *blockResult=[[NSString alloc] initWithString:calibrated];
	completion.text=blockResult;
	[blockResult release];
	
	//Image One Test
	NSString *imageOne=[[NSString alloc] initWithString:imageOneResult];
	imageOneLabel.text=imageOne;
	[imageOne release];
	
	//Image Two Test
	NSString *imageTwo=[[NSString alloc] initWithString:imageTwoResult];
	imageTwoLabel.text=imageTwo;
	[imageTwo release];
	
	//Image Three Test
	NSString *imageThree=[[NSString alloc] initWithString:imageThreeResult];
	imageThreeLabel.text=imageThree;
	[imageThree release];
	
	//Image Four Test
	NSString *imageFour=[[NSString alloc] initWithString:imageFourResult];
	imageFourLabel.text=imageFour;
	[imageFour release];
	
	//Image Five Test
	NSString *imageFive=[[NSString alloc] initWithString:imageFiveResult];
	imageFiveLabel.text=imageFive;
	[imageFive release];
	
	//Image Six Test
	NSString *imageSix=[[NSString alloc] initWithString:imageSixResult];
	imageSixLabel.text=imageSix;
	[imageSix release];
	
	//Image Seven Test
	NSString *imageSeven=[[NSString alloc] initWithString:imageSevenResult];
	imageSevenLabel.text=imageSeven;
	[imageSeven release];
	
	//Image Eight Test
	NSString *imageEight=[[NSString alloc] initWithString:imageEightResult];
	imageEightLabel.text=imageEight;
	[imageEight release];
	
	//Image Nine Test
	NSString *imageNine=[[NSString alloc] initWithString:imageNineResult];
	imageNineLabel.text=imageNine;
	[imageNine release];
	
	//Image Ten Test
	NSString *imageTen=[[NSString alloc] initWithString:imageTenResult];
	imageTenLabel.text=imageTen;
	[imageTen release];
	 
    [super viewWillAppear:animated];
}

// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	calibrated = @"No!";
	
	imageOneResult = @"No!";
	imageTwoResult = @"No!";
	imageThreeResult = @"No!";
	imageFourResult = @"No!";
	imageFiveResult = @"No!";
	imageSixResult = @"No!";
	imageSevenResult = @"No!";
	imageEightResult = @"No!";
	imageNineResult = @"No!";
	imageTenResult = @"No!";
	
	UIAlertView *alertDialog;
	alertDialog = [[UIAlertView alloc]
				   initWithTitle:@"Welcome to our Senior Design App" 
				   message:@"Please make sure your iPhone's brightness is set to 100%." 
				   delegate:nil 
				   cancelButtonTitle:@"Begin Testing" 
				   otherButtonTitles:nil];
	[alertDialog show];
	[alertDialog release];
	
	theScroller.contentSize = CGSizeMake(280.0, 500.0);
	
    [super viewDidLoad];
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[calibrated release];
	[completion release];
	[theScroller release];
	
	[imageOneLabel release];
	[imageTwoLabel release];
	[imageThreeLabel release];
	[imageFourLabel release];
	[imageFiveLabel release];
	[imageSixLabel release];
	[imageSevenLabel release];
	[imageEightLabel release];
	[imageNineLabel release];
	[imageTenLabel release];
	
    [super dealloc];
}


@end

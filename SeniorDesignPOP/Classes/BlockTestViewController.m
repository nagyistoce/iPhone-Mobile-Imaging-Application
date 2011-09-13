//
//  BlockTestViewController.m
//  SeniorDesignPOP
//
//  Created by Taylor Guidon on 3/29/11.
//  Copyright 2011 George Washington University. All rights reserved.
//

#import "BlockTestViewController.h"
#import "SeniorDesignPOPAppDelegate.h"

int brightnessTruth;

@implementation BlockTestViewController

@synthesize findMe;
@synthesize go;
@synthesize reset;
@synthesize success;

-(IBAction)foundMe:(id)sender {
	
	successCount++;
	NSString *successString;
	
	successString = [[NSString alloc]
					 initWithFormat:@"Found me %i time(s)", successCount];
	success.text = successString;
	
	//Counts how many times the user finds the black box
	if (successCount < 4) {
		
		//Randomly Generate Coordinates
		int x = arc4random() % 281; //Random number from 0-320
		int y = (arc4random() % 331) + 90; //Random number from 0-480
		
		findMe.frame = CGRectMake(x, y, 50, 50);
		
	} else if (successCount = 4) {
		UIAlertView *finishedDialog;
		finishedDialog = [[UIAlertView alloc]
						  initWithTitle:@"You are calibrated" 
						  message:@"Please Continue!" 
						  delegate:nil 
						  cancelButtonTitle:@"Ok" 
						  otherButtonTitles:nil];
		[finishedDialog show];
		[finishedDialog release];
		
		findMe.hidden = YES;
		[summaryViewController blockSuccess];
	}	
	
	[successString release];
}

-(IBAction)go:(id)sender {
	
	findMe.hidden = NO;
	
	//Randomly Generate Coordinates
	int x = arc4random() % 281; //Random number from 0-320
	int y = (arc4random() % 281) + 90; //Random number from 0-480
	
	findMe.frame = CGRectMake(x, y, 50, 50);
	
}

-(IBAction)reset:(id)sender {
	
	//Reset the counter and label text
	successCount = 0;
	success.text = @"Find the Hidden Box";
	
	//Randomly Generate Coordinates
	int x = arc4random() % 281; //Random number from 0-320
	int y = (arc4random() % 281) + 90; //Random number from 0-480
	
	findMe.frame = CGRectMake(x, y, 50, 50);
	[summaryViewController blockReset];
	
	
	brightnessTruth = 0;
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
	findMe.hidden = YES;
	successCount = 0;
	
	UIAlertView *finishedDialog;
	finishedDialog = [[UIAlertView alloc]
					  initWithTitle:@"Screen Reflection Test" 
					  message:@"Press 'Go' and find the hidden box 4 times to calibrate screen." 
					  delegate:nil 
					  cancelButtonTitle:@"Begin" 
					  otherButtonTitles:nil];
	[finishedDialog show];
	[finishedDialog release];
	
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
	[findMe release];
	[success release];
	[go release];
	[reset release];
    [super dealloc];
}


@end

//
//  ImageTestViewController.m
//  SeniorDesignPOP
//
//  Created by Taylor Guidon on 3/29/11.
//  Copyright 2011 George Washington University. All rights reserved.
//

#import "ImageTestViewController.h"
#import "Imaging.h"
#import "EAGLView.h"
#import <Foundation/NSValue.h>

float brightnessValue;
int brightnessTruth = 0;

@implementation ImageTestViewController

@synthesize resultOne;
@synthesize resultTwo;
@synthesize resultThree;
@synthesize resultFour;
@synthesize resultFive;

@synthesize generateOne;
@synthesize generateTwo;
@synthesize generateThree;
@synthesize generateFour;
@synthesize generateFive;

@synthesize theScroller;

-(IBAction)getDataOne:(id)sender {
	NSString *aPath = [[NSBundle mainBundle] pathForResource:@"IMG_0121" ofType:@"JPG"];

    NSURL *url = [NSURL fileURLWithPath:aPath];
    
    CGImageSourceRef sourceRef = CGImageSourceCreateWithURL((CFURLRef)url, NULL);
    
    NSDictionary *immutableMetadata = (NSDictionary *) CGImageSourceCopyPropertiesAtIndex(sourceRef,0,NULL);
    NSDictionary *exifDic = [immutableMetadata objectForKey:(NSString *)kCGImagePropertyExifDictionary];
    
    NSNumber *ExifApertureValue  = [exifDic objectForKey:(NSString*)kCGImagePropertyExifApertureValue];
    NSNumber *ExifShutterSpeed  = [exifDic objectForKey:(NSString*)kCGImagePropertyExifShutterSpeedValue];
    NSNumber *ExifExposureTime  = [exifDic objectForKey:(NSString*)kCGImagePropertyExifExposureTime];
	NSNumber *ExifFStop  = [exifDic objectForKey:(NSString*)kCGImagePropertyExifFNumber];
	NSNumber *ExifISOSpeed  = [[exifDic objectForKey:(NSString*)kCGImagePropertyExifISOSpeedRatings] objectAtIndex:0];
	
    NSLog(@"ExifApertureValue : %@ \n",ExifApertureValue);
    NSLog(@"ExifShutterSpeed : %@ \n",ExifShutterSpeed);
    NSLog(@"ExifExposureTime : %@ \n",ExifExposureTime);
    NSLog(@"ExifFStop : %@ \n",ExifFStop);
	NSLog(@"ExifISOSpeed : %@ \n",ExifISOSpeed);
	
	float brightness, T, ISO;
	float K = 12.0;
	float A2 = 7.84;
	
	T = [ExifExposureTime floatValue];
	ISO = [ExifISOSpeed floatValue];
	
	brightness = (A2 * K) / (T * ISO);
	NSLog(@"%f", brightness);
	
	if (brightness > 0) {
		NSString *alertString = [NSString stringWithFormat:@"The brightness of the image is %.2f and valid", brightness];
		resultOne.text = @"Valid Value";
		UIAlertView *alertDialog;
		alertDialog = [[UIAlertView alloc]
					   initWithTitle:@"Brightness Value" 
					   message:alertString
					   delegate:nil 
					   cancelButtonTitle:@"Ok" 
					   otherButtonTitles:nil];
		[alertDialog show];
		[alertDialog release];
		brightnessValue = 1.5;
		brightnessTruth = 1;
	} else {
		resultOne.text = @"Not Valid";
	}

	
	[summaryViewController imageOneSuccess];
	
	[ExifApertureValue release];
	[ExifShutterSpeed release];
	[ExifExposureTime release];
	[ExifFStop release];
	[ExifISOSpeed release];
}

-(IBAction)getDataTwo:(id)sender {  
	NSString *aPath = [[NSBundle mainBundle] pathForResource:@"IMG_0122" ofType:@"JPG"];

	NSURL *url = [NSURL fileURLWithPath:aPath];
    
    CGImageSourceRef sourceRef = CGImageSourceCreateWithURL((CFURLRef)url, NULL);
    
    NSDictionary *immutableMetadata = (NSDictionary *) CGImageSourceCopyPropertiesAtIndex(sourceRef,0,NULL);
    NSDictionary *exifDic = [immutableMetadata objectForKey:(NSString *)kCGImagePropertyExifDictionary];
    
    NSNumber *ExifApertureValue  = [exifDic objectForKey:(NSString*)kCGImagePropertyExifApertureValue];
    NSNumber *ExifShutterSpeed  = [exifDic objectForKey:(NSString*)kCGImagePropertyExifShutterSpeedValue];
    NSNumber *ExifExposureTime  = [exifDic objectForKey:(NSString*)kCGImagePropertyExifExposureTime];
	NSNumber *ExifFStop  = [exifDic objectForKey:(NSString*)kCGImagePropertyExifFNumber];
	NSNumber *ExifISOSpeed  = [[exifDic objectForKey:(NSString*)kCGImagePropertyExifISOSpeedRatings] objectAtIndex:0];
	
    NSLog(@"ExifApertureValue : %@ \n",ExifApertureValue);
    NSLog(@"ExifShutterSpeed : %@ \n",ExifShutterSpeed);
    NSLog(@"ExifExposureTime : %@ \n",ExifExposureTime);
    NSLog(@"ExifFStop : %@ \n",ExifFStop);
	NSLog(@"ExifISOSpeed : %@ \n",ExifISOSpeed);
	
	float brightness, T, ISO;
	float K = 12.0;
	float A2 = 7.84;
	
	T = [ExifExposureTime floatValue];
	ISO = [ExifISOSpeed floatValue];
	
	brightness = (A2 * K) / (T * ISO);
	
	if (brightness > 0) {
		NSString *alertString = [NSString stringWithFormat:@"The brightness of the image is %.2f and valid", brightness];
		resultTwo.text = @"Valid Value";
		UIAlertView *alertDialog;
		alertDialog = [[UIAlertView alloc]
					   initWithTitle:@"Brightness Value" 
					   message:alertString
					   delegate:nil 
					   cancelButtonTitle:@"Ok" 
					   otherButtonTitles:nil];
		[alertDialog show];
		[alertDialog release];
		brightnessValue = 1.5;
		brightnessTruth = 1;
	} else {
		resultTwo.text = @"Not Valid";
	}
	
	[ExifApertureValue release];
	[ExifShutterSpeed release];
	[ExifExposureTime release];
	[ExifFStop release];
	[ExifISOSpeed release];
}

-(IBAction)getDataThree:(id)sender {   
	NSString *aPath = [[NSBundle mainBundle] pathForResource:@"IMG_0123" ofType:@"JPG"];
	
    NSURL *url = [NSURL fileURLWithPath:aPath];
    
    CGImageSourceRef sourceRef = CGImageSourceCreateWithURL((CFURLRef)url, NULL);
    
    NSDictionary *immutableMetadata = (NSDictionary *) CGImageSourceCopyPropertiesAtIndex(sourceRef,0,NULL);
    NSDictionary *exifDic = [immutableMetadata objectForKey:(NSString *)kCGImagePropertyExifDictionary];
    
    NSNumber *ExifApertureValue  = [exifDic objectForKey:(NSString*)kCGImagePropertyExifApertureValue];
    NSNumber *ExifShutterSpeed  = [exifDic objectForKey:(NSString*)kCGImagePropertyExifShutterSpeedValue];
    NSNumber *ExifExposureTime  = [exifDic objectForKey:(NSString*)kCGImagePropertyExifExposureTime];
	NSNumber *ExifFStop  = [exifDic objectForKey:(NSString*)kCGImagePropertyExifFNumber];
	NSNumber *ExifISOSpeed  = [[exifDic objectForKey:(NSString*)kCGImagePropertyExifISOSpeedRatings] objectAtIndex:0];
	
    NSLog(@"ExifApertureValue : %@ \n",ExifApertureValue);
    NSLog(@"ExifShutterSpeed : %@ \n",ExifShutterSpeed);
    NSLog(@"ExifExposureTime : %@ \n",ExifExposureTime);
    NSLog(@"ExifFStop : %@ \n",ExifFStop);
	NSLog(@"ExifISOSpeed : %@ \n",ExifISOSpeed);
	
	float brightness, T, ISO;
	float K = 12.0;
	float A2 = 7.84;
	
	T = [ExifExposureTime floatValue];
	ISO = [ExifISOSpeed floatValue];
	
	brightness = (A2 * K) / (T * ISO);
	
	if (brightness > 0) {
		NSString *alertString = [NSString stringWithFormat:@"The brightness of the image is %.2f and valid", brightness];
		resultThree.text = @"Valid Value";
		UIAlertView *alertDialog;
		alertDialog = [[UIAlertView alloc]
					   initWithTitle:@"Brightness Value" 
					   message:alertString
					   delegate:nil 
					   cancelButtonTitle:@"Ok" 
					   otherButtonTitles:nil];
		[alertDialog show];
		[alertDialog release];
		brightnessValue = 1.5;
		brightnessTruth = 1;
	} else {
		resultThree.text = @"Not Valid";
	}
	
	[ExifApertureValue release];
	[ExifShutterSpeed release];
	[ExifExposureTime release];
	[ExifFStop release];
	[ExifISOSpeed release];
}

-(IBAction)getDataFour:(id)sender {
    NSString *aPath = [[NSBundle mainBundle] pathForResource:@"IMG_0125" ofType:@"JPG"];
        
    NSURL *url = [NSURL fileURLWithPath:aPath];
    
    CGImageSourceRef sourceRef = CGImageSourceCreateWithURL((CFURLRef)url, NULL);
    
    NSDictionary *immutableMetadata = (NSDictionary *) CGImageSourceCopyPropertiesAtIndex(sourceRef,0,NULL);
    NSDictionary *exifDic = [immutableMetadata objectForKey:(NSString *)kCGImagePropertyExifDictionary];
    
    NSNumber *ExifApertureValue  = [exifDic objectForKey:(NSString*)kCGImagePropertyExifApertureValue];
    NSNumber *ExifShutterSpeed  = [exifDic objectForKey:(NSString*)kCGImagePropertyExifShutterSpeedValue];
    NSNumber *ExifExposureTime  = [exifDic objectForKey:(NSString*)kCGImagePropertyExifExposureTime];
	NSNumber *ExifFStop  = [exifDic objectForKey:(NSString*)kCGImagePropertyExifFNumber];
	NSNumber *ExifISOSpeed  = [[exifDic objectForKey:(NSString*)kCGImagePropertyExifISOSpeedRatings] objectAtIndex:0];
	
    NSLog(@"ExifApertureValue : %@ \n",ExifApertureValue);
    NSLog(@"ExifShutterSpeed : %@ \n",ExifShutterSpeed);
    NSLog(@"ExifExposureTime : %@ \n",ExifExposureTime);
    NSLog(@"ExifFStop : %@ \n",ExifFStop);
	NSLog(@"ExifISOSpeed : %@ \n",ExifISOSpeed);
	
	float brightness, T, ISO;
	float K = 12.0;
	float A2 = 7.84;
	
	T = [ExifExposureTime floatValue];
	ISO = [ExifISOSpeed floatValue];
	
	brightness = (A2 * K) / (T * ISO);
	
	if (brightness > 0) {
		NSString *alertString = [NSString stringWithFormat:@"The brightness of the image is %.2f and valid", brightness];
		resultFour.text = @"Valid Value";
		UIAlertView *alertDialog;
		alertDialog = [[UIAlertView alloc]
					   initWithTitle:@"Brightness Value" 
					   message:alertString
					   delegate:nil 
					   cancelButtonTitle:@"Ok" 
					   otherButtonTitles:nil];
		[alertDialog show];
		[alertDialog release];
		brightnessValue = 1.5;
		brightnessTruth = 1;
	} else {
		resultFour.text = @"Not Valid";
	}
	
	[ExifApertureValue release];
	[ExifShutterSpeed release];
	[ExifExposureTime release];
	[ExifFStop release];
	[ExifISOSpeed release];
}

-(IBAction)getDataFive:(id)sender {
    NSString *aPath = [[NSBundle mainBundle] pathForResource:@"IMG_0126" ofType:@"JPG"];
        
    NSURL *url = [NSURL fileURLWithPath:aPath];
    
    CGImageSourceRef sourceRef = CGImageSourceCreateWithURL((CFURLRef)url, NULL);
    
    NSDictionary *immutableMetadata = (NSDictionary *) CGImageSourceCopyPropertiesAtIndex(sourceRef,0,NULL);
    NSDictionary *exifDic = [immutableMetadata objectForKey:(NSString *)kCGImagePropertyExifDictionary];
    
    NSNumber *ExifApertureValue  = [exifDic objectForKey:(NSString*)kCGImagePropertyExifApertureValue];
    NSNumber *ExifShutterSpeed  = [exifDic objectForKey:(NSString*)kCGImagePropertyExifShutterSpeedValue];
    NSNumber *ExifExposureTime  = [exifDic objectForKey:(NSString*)kCGImagePropertyExifExposureTime];
	NSNumber *ExifFStop  = [exifDic objectForKey:(NSString*)kCGImagePropertyExifFNumber];
	NSNumber *ExifISOSpeed  = [[exifDic objectForKey:(NSString*)kCGImagePropertyExifISOSpeedRatings] objectAtIndex:0];
	
    NSLog(@"ExifApertureValue : %@ \n",ExifApertureValue);
    NSLog(@"ExifShutterSpeed : %@ \n",ExifShutterSpeed);
    NSLog(@"ExifExposureTime : %@ \n",ExifExposureTime);
    NSLog(@"ExifFStop : %@ \n",ExifFStop);
	NSLog(@"ExifISOSpeed : %@ \n",ExifISOSpeed);
	
	float brightness, T, ISO;
	float K = 12.0;
	float A2 = 7.84;
	
	T = [ExifExposureTime floatValue];
	ISO = [ExifISOSpeed floatValue];
	
	brightness = (A2 * K) / (T * ISO);
	
	if (brightness > 0) {
		NSString *alertString = [NSString stringWithFormat:@"The brightness of the image is %.2f and valid", brightness];
		resultFive.text = @"Valid Value";
		UIAlertView *alertDialog;
		alertDialog = [[UIAlertView alloc]
					   initWithTitle:@"Brightness Value" 
					   message:alertString
					   delegate:nil 
					   cancelButtonTitle:@"Ok" 
					   otherButtonTitles:nil];
		[alertDialog show];
		[alertDialog release];
		brightnessValue = 1.5;
		brightnessTruth = 1;
	} else {
		resultFive.text = @"Not Valid";
	}
		
	[ExifApertureValue release];
	[ExifShutterSpeed release];
	[ExifExposureTime release];
	[ExifFStop release];
	[ExifISOSpeed release];
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
	theScroller.contentSize = CGSizeMake(280.0, 1900.0);
	
	UIAlertView *alertDialog;
	alertDialog = [[UIAlertView alloc]
				   initWithTitle:@"Image Testing" 
				   message:@"Click the 'Generate XX' button to test each image for brightness properties." 
				   delegate:nil 
				   cancelButtonTitle:@"Begin" 
				   otherButtonTitles:nil];
	[alertDialog show];
	[alertDialog release];
	
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
	[resultOne release];
	[resultTwo release];
	[resultThree release];
	[resultFour release];
	[resultFive release];

	[generateOne release];
	[generateTwo release];
	[generateThree release];
	[generateFour release];
	[generateFive release];
	
	[theScroller release];
    [super dealloc];
}


@end

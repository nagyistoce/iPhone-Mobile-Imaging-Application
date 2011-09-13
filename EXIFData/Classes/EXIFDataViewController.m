//
//  EXIFDataViewController.m
//  EXIFData
//
//  Created by Taylor Guidon on 3/28/11.
//  Copyright 2011 George Washington University. All rights reserved.
//

#import "EXIFDataViewController.h"

@implementation EXIFDataViewController

@synthesize result;
@synthesize generate;

-(IBAction)getData:(id)sender {
    NSString *aPath = [[NSBundle mainBundle] pathForResource:@"IMG_0085" ofType:@"JPG"];
    
    NSLog(@"The path of the image is %@\n",aPath);
    
    NSURL *url = [NSURL fileURLWithPath:aPath];
    
    CGImageSourceRef sourceRef = CGImageSourceCreateWithURL((CFURLRef)url, NULL);
    
    NSDictionary *immutableMetadata = (NSDictionary *) CGImageSourceCopyPropertiesAtIndex(sourceRef,0,NULL);
    
    NSDictionary *exifDic = [immutableMetadata objectForKey:(NSString *)kCGImagePropertyExifDictionary];
    
    NSString *ExifApertureValue  = [exifDic objectForKey:(NSString*)kCGImagePropertyExifApertureValue];
    NSString *ExifShutterSpeed  = [exifDic objectForKey:(NSString*)kCGImagePropertyExifShutterSpeedValue];
    NSString *ExifExposureTime  = [exifDic objectForKey:(NSString*)kCGImagePropertyExifExposureTime]; //shutter speed
	NSString *ExifFStop  = [exifDic objectForKey:(NSString*)kCGImagePropertyExifFNumber];
	NSString *ExifISOSpeed  = [exifDic objectForKey:(NSString*)kCGImagePropertyExifISOSpeedRatings];
	
	//kCGImagePropertyExifISOSpeedRatings
	
    NSLog(@"ExifApertureValue : %@ \n",ExifApertureValue);
    NSLog(@"ExifShutterSpeed : %@ \n",ExifShutterSpeed);
    NSLog(@"ExifExposureTime : %@ \n",ExifExposureTime);
    NSLog(@"ExifFStop : %@ \n",ExifFStop);
	NSLog(@"ExifISOSpeed : %@ \n",ExifISOSpeed);

	
	if (ExifISOSpeed > 0) {
		result.text = @"Valid Value";
	}
	
	
	/*NSString *aPath = [[NSBundle mainBundle] pathForResource:@"IMG_0062" ofType:@"JPG"];
    NSURL *url = [NSURL fileURLWithPath:aPath];
    CGImageSourceRef sourceRef = CGImageSourceCreateWithURL((CFURLRef)url, NULL);
    NSDictionary *immutableMetadata = (NSDictionary *) CGImageSourceCopyPropertiesAtIndex(sourceRef,0,NULL);
    NSDictionary *exifDic = [immutableMetadata objectForKey:(NSString *)kCGImagePropertyExifDictionary];
    NSString *string = [exifDic objectForKey:(NSString*)kCGImagePropertyExifShutterSpeedValue];
	result.text = string;*/
}

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	
	
    [super viewDidLoad];
}



/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[result release];
	[generate release];
    [super dealloc];
}

@end

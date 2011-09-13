//
//  EXIFDataAppDelegate.h
//  EXIFData
//
//  Created by Taylor Guidon on 3/28/11.
//  Copyright 2011 George Washington University. All rights reserved.
//

#import <UIKit/UIKit.h>

@class EXIFDataViewController;

@interface EXIFDataAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    EXIFDataViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet EXIFDataViewController *viewController;

@end


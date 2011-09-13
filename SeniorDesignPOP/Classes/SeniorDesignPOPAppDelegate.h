//
//  SeniorDesignPOPAppDelegate.h
//  SeniorDesignPOP
//
//  Created by Taylor Guidon on 3/29/11.
//  Copyright 2011 George Washington University. All rights reserved.
//


#import <UIKit/UIKit.h>

extern float brightnessValue;
extern int brightnessTruth;
extern float externT;

@interface SeniorDesignPOPAppDelegate : NSObject 
			<UIApplicationDelegate, UITabBarControllerDelegate> {
    UIWindow *window;
	IBOutlet UITabBarController *tabBarController;			
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UITabBarController *tabBarController;

@end


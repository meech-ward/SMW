//
//  SMWUtilityFunctions.h
//  Grocery Dude
//
//  Created by Sam Meech Ward on 2015-01-02.
//  Copyright (c) 2015 Sam Meech-Ward. All rights reserved.
//

@import UIKit;

@interface SMWUtilityFunctions : NSObject
@end

// NSLog better for debugging
void ExtendNSLog(const char *file, int lineNumber, const char *functionName, NSString *format, ...);
#define SMWLog(args...) { ExtendNSLog(__FILE__,__LINE__,__PRETTY_FUNCTION__,args);}

// Check if the device is an ipad
BOOL deviceIsiPad();

// Remove any implicit animations
// Example: Change the frame of a CALayer without it animating
void unAnimateBlock(void (^block)(void));

// Log a CGRect
void printFrame(CGRect frame);

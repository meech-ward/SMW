//
//  SMWUtilityFunctions.m
//  Grocery Dude
//
//  Created by Sam Meech Ward on 2015-01-02.
//  Copyright (c) 2015 Sam Meech-Ward. All rights reserved.
//

#import "SMWUtilityFunctions.h"

@implementation SMWUtilityFunctions
@end

void ExtendNSLog(const char *file, int lineNumber, const char *functionName, NSString *format, ...)
{
    // Type to hold information about variable arguments.
    va_list ap;
    
    // Initialize a variable argument list.
    va_start (ap, format);
    
    // NSLog only adds a newline to the end of the NSLog format if
    // one is not already there.
    // Here we are utilizing this feature of NSLog()
    if (![format hasSuffix: @"\n"])
    {
        format = [format stringByAppendingString: @"\n"];
    }
    
    NSString *body = [[NSString alloc] initWithFormat:format arguments:ap];
    
    // End using variable argument list.
    va_end (ap);
    
    NSString *fileName = [[NSString stringWithUTF8String:file] lastPathComponent];
    fprintf(stderr, "(%s) (%s:%d) %s",
            functionName, [fileName UTF8String],
            lineNumber, [body UTF8String]);
}


// Check if the device is an iPad
BOOL deviceIsiPad() {
    return ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad);
}

// Perform an action on a CALayer without animation
void unAnimateBlock(void (^block)(void)) {
    [CATransaction begin];
    [CATransaction setValue:(id)kCFBooleanTrue forKey:kCATransactionDisableActions];
    block();
    [CATransaction commit];
}

// Log a cgrect
void printFrame(CGRect frame) {
    NSLog(@"x:%f, y:%f, width:%f, height:%f\n", frame.origin.x, frame.origin.y, frame.size.width, frame.size.height);
}



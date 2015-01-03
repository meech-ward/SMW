SMW
========

Just some global functions I find useful sometimes. 
Also I wanted to practice making a cocoapod.

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

	#import <SMW/SMW.h>
	
	// Like NSLog but better
	SMWLog(args...)

	// Check if the device is an ipad
	BOOL deviceIsiPad();

	// Remove any implicit animations
	// Example: Change the frame of a CALayer without it animating
	void unAnimateBlock(void (^block)(void));

	// Log a CGRect
	void printFrame(CGRect frame);

## Requirements

## Installation

SMW is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

    pod "SMW"

## Author

Sam Meech-Ward, sam@meech-ward.com

## License

SMW is available under the MIT license. See the LICENSE file for more info.


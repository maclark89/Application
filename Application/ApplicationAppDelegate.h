//
//  ApplicationAppDelegate.h
//  Application
//
//  Created by Michael Clark on 7/14/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ApplicationAppDelegate : NSObject <NSApplicationDelegate> {
@private
    NSWindow *window;
}

@property (assign) IBOutlet NSWindow *window;

- (IBAction) buttonClicked: (id)sender;
- (IBAction) imageFormatPopUpDidChange: (id)sender;


- (IBAction) textFieldChanged: (id)sender;
@end

//
//  ApplicationAppDelegate.m
//  Application
//
//  Created by Michael Clark on 7/14/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ApplicationAppDelegate.h"

@implementation ApplicationAppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    NSRect frame = NSMakeRect(10, 40, 90, 40);
    NSButton* pushButton = [[NSButton alloc] initWithFrame: frame];
    pushButton.bezelStyle = NSRoundedBezelStyle;
    [self.window.contentView addSubview:pushButton];
    
    pushButton.target = self;
    pushButton.action = @selector(reloadDocument:);
    
    [pushButton performClick:self];
    [pushButton release];
    
    NSWindow* myWindow = [[NSWindow alloc] init];
    NSButton* myButton = [[NSButton alloc] init];
    
    [myWindow.contentView addSubview:myButton];
    [myButton release];
    NSLog(@"firstResponder: %@", myWindow.firstResponder);
    
    [myWindow makeFirstResponder:myButton];
    
    NSLog(@"firstResponder: %@", myWindow.firstResponder);
    
    [myWindow makeFirstResponder:nil];
    NSLog(@"firstResponder: %@", myWindow.firstResponder);
    
    [myWindow release];
}

- (IBAction) reloadDocument:(id)sender {
    NSLog(@"Calling -reloadDocument: with sender %@", sender);
}

- (IBAction) buttonClicked:(id)sender {
    NSLog(@"Please do not press this button again.");
    
}

- (IBAction) imageFormatPopUpDidChange:(id)sender {
    NSLog(@"selected item %@", [sender selectedItem]);
    NSLog(@"selected index %@", [sender indexOfSelectedItem]);
    NSLog(@"selected title %@", [sender titleOfSelectedItem]);
}

- (IBAction) textFieldChanged: (id)sender {
    NSLog(@" sender: %@", sender);
    NSLog(@"sender text: %@", [sender stringValue]);
    
}

@end

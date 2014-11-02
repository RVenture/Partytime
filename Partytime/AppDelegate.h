//
//  AppDelegate.h
//  Partytime
//
//  Created by Ryan on 6/29/14.
//  Copyright (c) 2014 Ryan Holmes. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTextField *textField;

- (void)keyDown:(NSEvent *)event;

- (IBAction)takeNameOfUserFrom:(id)sender;




@end

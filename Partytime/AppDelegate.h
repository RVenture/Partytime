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
@property (nonatomic, retain) IBOutlet NSTextField *textField;
@property (nonatomic, retain) IBOutlet NSTextField *mTextField;
@property (nonatomic, retain) IBOutlet NSTextField *nTextField;
@property (nonatomic, retain) IBOutlet NSButton *button;

- (IBAction)pushButton:(id)sender;

@end

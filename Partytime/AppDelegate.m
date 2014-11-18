//
//  AppDelegate.m
//  Partytime
//
//  Created by Ryan on 6/29/14.
//  Copyright (c) 2014 Ryan Holmes. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window;
@synthesize textField;
@synthesize mTextField;
@synthesize nTextField;
@synthesize button;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    
    [window setOpaque:NO];
    [window setAlphaValue:0.96];
    
    NSColor *insertionPointColor = [NSColor whiteColor];
    
    NSTextView *fieldEditor = (NSTextView*)[self.textField.window fieldEditor:YES
                                                                    forObject:self.textField];
    fieldEditor.insertionPointColor = insertionPointColor;
    
    NSColor *color = [NSColor whiteColor];
    NSMutableAttributedString *colorTitle =
    [[NSMutableAttributedString alloc] initWithAttributedString:[button attributedTitle]];
    
    NSRange titleRange = NSMakeRange(0, [colorTitle length]);
    
    [colorTitle addAttribute:NSForegroundColorAttributeName
                       value:color
                       range:titleRange];
    
    [button setAttributedTitle:colorTitle];}

- (BOOL)acceptsFirstResponder {
    return YES;
    
}

- (void)keyDown: (NSEvent *) event {
    
    if ([event keyCode] == 13){ //For return key
        NSLog(@"return!");
    }
    
}

- (IBAction)pushButton:(id)sender {
    
    
    NSString *newUser = [textField stringValue];
    NSLog(@"%@", newUser);
    
    NSString *newMessage = [mTextField stringValue];
    NSLog(@"%@", newMessage);
    
    int number = [nTextField.stringValue intValue];
    
    NSDictionary *error = [NSDictionary new];
    
    NSString *script3 = [NSString stringWithFormat:@"tell application \"Messages\" to send \"%@\" to buddy \"%@\"", newMessage, newUser ];
    
    for (int x = 0; x < number; x++ ) {
        
        NSAppleScript *appleScript = [[NSAppleScript new] initWithSource:script3];
        
        if ([appleScript executeAndReturnError:&error]) {
            NSLog(@"success!");
        } else {
            NSLog(@"failure!");
        }
    
    }
}

@end

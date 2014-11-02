//
//  AppDelegate.m
//  Partytime
//
//  Created by Ryan on 6/29/14.
//  Copyright (c) 2014 Ryan Holmes. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

int x = 1;


- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    
}


- (BOOL)acceptsFirstResponder {
    return YES;
}

- (void)keyDown: (NSEvent *) event {
    
    if ([event keyCode] == 13){ //For return key
        NSLog(@"return!");
    }
    
}

-(void)controlTextDidEndEditing:(NSNotification *)notification
{
    // See if it was due to a return
    if ( [[[notification userInfo] objectForKey:@"NSTextMovement"] intValue] == NSReturnTextMovement )
    {
        NSLog(@"Return was pressed!");
    }
}


- (void)control:(NSControl *)control textView:(NSTextView *)fieldEditor doCommandBySelector:(SEL)commandSelector
{
    NSLog(@"Selector method is (%@)", NSStringFromSelector( commandSelector ) );
    if (commandSelector == @selector(insertNewline:)) {
        //Do something against ENTER key
        NSLog(@"Return was pressed!");
        
    } else if (commandSelector == @selector(deleteForward:)) {
        //Do something against DELETE key
        NSLog(@"Return was pressed!");
        
    } else if (commandSelector == @selector(deleteBackward:)) {
        //Do something against BACKSPACE key
        NSLog(@"Return was pressed!");
        
    } else if (commandSelector == @selector(insertTab:)) {
        //Do something against TAB key
        NSLog(@"Return was pressed!");
    }
}


- (IBAction)takeNameOfUserFrom:(id)sender {
    
    NSString *newUser = [sender stringValue];
    NSLog(@"%@", newUser);
    
    NSDictionary *error = [NSDictionary new];
  
    NSString *script3 = [NSString stringWithFormat:@"tell application \"Messages\" to send \"Nin\" to buddy \"%@\"", newUser ];
    
    for (int x = 1; x < 1000; x++ ) {
    
    NSAppleScript *appleScript = [[NSAppleScript new] initWithSource:script3];
    
    if ([appleScript executeAndReturnError:&error]) {
        NSLog(@"success!");
    } else {
        NSLog(@"failure!");
    }
        
    }
    
}






@end

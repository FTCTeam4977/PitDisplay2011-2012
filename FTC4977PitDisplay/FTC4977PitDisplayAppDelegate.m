//
//  FTC4977PitDisplayAppDelegate.m
//  FTC4977PitDisplay
//
//  Created by Andrew Lobos on 12/13/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "FTC4977PitDisplayAppDelegate.h"
#import "FTCMatches.h"
#import "TableRefreshController.h"

@implementation FTC4977PitDisplayAppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    [TableRefreshController Refresh];
}

@end

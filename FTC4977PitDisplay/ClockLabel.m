//
//  ClockLabel.m
//  FTC4977PitDisplay
//
//  Created by Andrew Lobos on 12/13/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ClockLabel.h"

@implementation ClockLabel

- (id)init
{
    self = [super init];
    if (self) {
        timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateClock) userInfo:nil repeats:YES];;
        
        date = [[NSDateFormatter alloc] init];
        [date setDateFormat:@"h:mm:ss a"];
    }
    
    return self;
}

- (void) updateClock
{
    [output setStringValue:[NSString stringWithFormat:@"Current Time: %@", [date stringFromDate:[NSDate date]]]];
}

@end

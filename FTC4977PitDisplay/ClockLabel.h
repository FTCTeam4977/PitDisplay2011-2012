//
//  ClockLabel.h
//  FTC4977PitDisplay
//
//  Created by Andrew Lobos on 12/13/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ClockLabel : NSObject
{
    NSTimer *timer;
    NSDateFormatter *date;
    IBOutlet NSTextField *output;
}

-(void) updateClock;
@end

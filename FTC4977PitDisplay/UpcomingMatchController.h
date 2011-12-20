//
//  UpcomingMatchController.h
//  FTC4977PitDisplay
//
//  Created by Andrew on 12/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FTCMatches.h"
#import "TableRefreshController.h"

@interface UpcomingMatchController : NSObject
{
    int currentMatch;
    bool isFinished;
    
    IBOutlet NSTextField *nextMatchLarge;
    IBOutlet NSTextField *nextMatchStation;
    
    IBOutlet NSTextField *nextMatchSmall;
}

-(IBAction)Won:(id)sender;
-(IBAction)Lost:(id)sender;
-(IBAction)Tie:(id)sender;
@end

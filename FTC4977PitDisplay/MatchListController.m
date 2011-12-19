//
//  MatchListController.m
//  FTC4977PitDisplay
//
//  Created by Andrew Lobos on 12/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MatchListController.h"

@implementation MatchListController

- (id)init
{
    self = [super init];
    if (self) {
        data = [FTCMatches GetInstance];
    }
    
    return self;
}

@end

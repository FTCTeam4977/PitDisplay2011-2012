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
    }
    
    return self;
}

-(int) numberOfRowsInTableView: (NSTableView*)table
{
    return [[FTCMatches GetInstance] matchCount];
}

-(id) tableView:(NSTableView*)table objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
{
    NSString* columnName = [[tableColumn headerCell] stringValue];
    return [[FTCMatches GetInstance] queryMatch:row forString:columnName];
}


@end

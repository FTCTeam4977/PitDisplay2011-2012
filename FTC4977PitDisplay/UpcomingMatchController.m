//
//  UpcomingMatchController.m
//  FTC4977PitDisplay
//
//  Created by Andrew on 12/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "UpcomingMatchController.h"

@implementation UpcomingMatchController

- (id)init
{
    self = [super init];
    if (self) {
        currentMatch = 0;
    }
    
    return self;
}

-(NSString*)positionIDtoString: (int) position
{
    switch (position) {
        case 0:
            return @"Red 1";
        case 1:
            return @"Red 2";
            
        case 2:
            return @"Blue 1";
        case 3:
            return @"Blue 2";
            
    }
}


-(int) numberOfRowsInTableView: (NSTableView*)table
{
    return 4;
}

-(id) tableView:(NSTableView*)table objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
{
    NSString* columnName = [[tableColumn headerCell] stringValue];
    if ( [columnName isEqualToString:@"Team"] )
        return @"1";
    else if ( [columnName isEqualToString:@"Position"] )
        return [self positionIDtoString:row];
    else return @"-";
}

@end

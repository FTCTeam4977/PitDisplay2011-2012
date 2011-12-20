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
        isFinished = false;
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
    return @"-";
}


-(int) numberOfRowsInTableView: (NSTableView*)table
{
    return 4;
}

-(id) tableView:(NSTableView*)table objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
{
    if ( isFinished )
    {
        [nextMatchLarge setStringValue:@"No remaining matches"];
        [nextMatchSmall setStringValue:@"No remaining matches"];
        [nextMatchStation setStringValue:@""];
        
        return @"";
    }
        
    
    NSString* columnName = [[tableColumn headerCell] stringValue];
    
    
    
    
    if ( [columnName isEqualToString:@"Team"] )
    {
        NSString *team = [[FTCMatches GetInstance] queryMatch:currentMatch forString:[self positionIDtoString:(int)row]];
        if ( [team isEqualToString:@"4977"] )
        {
            [nextMatchLarge setStringValue:[NSString stringWithFormat:@"Next match is match #%@ at %@", [[FTCMatches GetInstance] queryMatch:currentMatch forString:@"Match"], [[FTCMatches GetInstance] queryMatch:currentMatch forString:@"Time"]]];
            [nextMatchStation setStringValue:[self positionIDtoString:(int)row]];
            
             [nextMatchSmall setStringValue:[NSString stringWithFormat:@"Match #%@", [[FTCMatches GetInstance] queryMatch:currentMatch forString:@"Match"]]];
        }
        return team;
    }
    else if ( [columnName isEqualToString:@"Position"] )
        return [self positionIDtoString:(int)row];
    else return @"-";
}

-(IBAction)Won:(id)sender
{
    
    [[FTCMatches GetInstance] setResult:@"Won" forMatch:currentMatch];
    
    if ( currentMatch != [[FTCMatches GetInstance] matchCount]-1 )
        currentMatch++;
    else isFinished = true;
    
    [TableRefreshController Refresh];
}

-(IBAction)Lost:(id)sender
{
    [[FTCMatches GetInstance] setResult:@"Lost" forMatch:currentMatch];
    
    if ( currentMatch != [[FTCMatches GetInstance] matchCount]-1 )
        currentMatch++;
    else isFinished = true;
    
    [TableRefreshController Refresh];
}

-(IBAction)Tie:(id)sender
{
    [[FTCMatches GetInstance] setResult:@"Tie" forMatch:currentMatch];
    
    if ( currentMatch != [[FTCMatches GetInstance] matchCount]-1 )
        currentMatch++;
    else isFinished = true;
    
    [TableRefreshController Refresh];
}

-(IBAction)Back:(id)sender
{
    NSLog(@"CALLED");
    if ( currentMatch <= 0 )
        return;
    if ( !isFinished )
        currentMatch--;
    
    isFinished = false;
    
    [[FTCMatches GetInstance] setResult:@"" forMatch:currentMatch];
    [TableRefreshController Refresh];
}

@end

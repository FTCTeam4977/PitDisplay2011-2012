//
//  FTCMatches.m
//  FTC4977PitDisplay
//
//  Created by Andrew on 12/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "FTCMatches.h"

@implementation FTCMatches

- (id)init
{
    self = [super init];
    if (self) 
    {
        NSString *fileData = [NSString stringWithContentsOfFile:@"/FTCMatches.txt"
                                                       encoding:NSUTF8StringEncoding
                                                          error:NULL];
        NSArray *lines = [fileData componentsSeparatedByString:@"\n"];
        
        matches = [[NSMutableArray alloc] init];
        
        for ( NSString* _line in lines )
        {
            NSArray *line = [_line componentsSeparatedByString:@","];
            if ( [line count] == 6)
            {
                NSMutableDictionary *match = [NSMutableDictionary dictionary];
                [match setObject:[line objectAtIndex:0] forKey:@"Match"];
                [match setObject:[line objectAtIndex:1] forKey:@"Time"];
                
                [match setObject:[line objectAtIndex:2] forKey:@"Red 1"];
                [match setObject:[line objectAtIndex:3] forKey:@"Red 2"];
                
                [match setObject:[line objectAtIndex:4] forKey:@"Blue 1"];
                [match setObject:[line objectAtIndex:5] forKey:@"Blue 2"];
                
                [matches addObject:match];
            }
        }
    }
    
    return self;
}

+ (FTCMatches*) GetInstance
{
    static FTCMatches* instance = NULL;
    
    if ( instance == NULL )
        instance = [[FTCMatches alloc] init];
    return instance;
}

- (NSString*) queryMatch:(int)matchID forString:(NSString*)data
{
    return [[matches objectAtIndex:matchID] objectForKey:data];
}

- (int) matchCount
{
    return (int)[matches count];
}

-(void) setResult:(NSString*)result forMatch:(int)match
{
    [[matches objectAtIndex:match] setObject:result forKey:@"Result"];
}

@end

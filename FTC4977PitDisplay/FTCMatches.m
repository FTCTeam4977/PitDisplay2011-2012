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
        NSScanner *parser = [NSScanner scannerWithString:fileData];
        [parser setCharactersToBeSkipped:[NSCharacterSet characterSetWithCharactersInString:@"\n"]];
        
       /* NSString *match;
        NSString *time;
        
        NSString *b1;
        NSString *b2;
        
        NSString *r1;
        NSString *r2;*/
        while ( ![parser isAtEnd] )
        {
            NSString *data;
            [parser scanUpToString:@"," intoString:&data];
            NSLog(@"%@", data);
        }
        
    }
    
    return self;
}

@end

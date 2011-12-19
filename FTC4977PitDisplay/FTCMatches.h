//
//  FTCMatches.h
//  FTC4977PitDisplay
//
//  Created by Andrew on 12/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FTCMatches : NSObject
{
    NSMutableArray *matches;
}
+ (FTCMatches*) GetInstance;
@end

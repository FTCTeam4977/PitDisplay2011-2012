//
//  TableRefreshController.h
//  FTC4977PitDisplay
//
//  Created by Andrew Lobos on 12/19/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TableRefreshController : NSObject
{
    IBOutlet NSTableView *full;
    IBOutlet NSTableView *next;
}

+(id)GetInstance;
-(void)refreshAll;
+(void)Refresh;

@end

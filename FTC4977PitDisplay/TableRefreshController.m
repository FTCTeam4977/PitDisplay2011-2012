//
//  TableRefreshController.m
//  FTC4977PitDisplay
//
//  Created by Andrew Lobos on 12/19/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "TableRefreshController.h"

@implementation TableRefreshController

- (id)init
{
    static TableRefreshController *instance = NULL;
    if ( instance == NULL )
    {
        self = [super init];
        if ( self )
            instance = self;
    }
    else
    {
        self = instance;
    }
    return self;
}

+(id)GetInstance
{
    return [[TableRefreshController alloc]init];
}

+(void)Refresh
{
    [[TableRefreshController GetInstance] refreshAll];
}

-(void)refreshAll
{
    [full reloadData];
    [next reloadData];
}

@end

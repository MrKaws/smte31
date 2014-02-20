//
//  City.m
//  HellGlow World
//
//  Created by Anh Tran on 13-02-14.
//  Copyright (c) 2014 Anh Tran. All rights reserved.
//

#import "City.h"

@implementation City

@synthesize glowActs;
@synthesize name;
@synthesize population;

-(void)showInfo
{
    NSLog(@"In the city of %@ there are currently living %ld people", name, population);
    NSLog(@"amount of acts: %ld", [glowActs count]);
    for(GlowAct *act in glowActs){
        [act showOff];
    }
}


-(id) init
{
    if(self == [super init])
    {
       glowActs = [[NSMutableArray alloc] init];
    }
    return self;
}

@end

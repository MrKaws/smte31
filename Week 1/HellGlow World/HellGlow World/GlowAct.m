//
//  GlowAct.m
//  HellGlow World
//
//  Created by Anh Tran on 13-02-14.
//  Copyright (c) 2014 Anh Tran. All rights reserved.
//

#import "GlowAct.h"

@implementation GlowAct

@synthesize name;
@synthesize startTime;
@synthesize rating;

-(void)showOff
{
    NSLog(@"The act is called %@ and will start at %@. People gave it a rating of %ld", name, startTime,rating);
}

@end

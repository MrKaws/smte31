//
//  main.m
//  HellGlow World
//
//  Created by Anh Tran on 13-02-14.
//  Copyright (c) 2014 Anh Tran. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GlowAct.h"
#import "City.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        GlowAct *blueLightAct = [GlowAct alloc];
        blueLightAct.name = @"The BlueLight act";
        blueLightAct.startTime = @"22:00";
        blueLightAct.rating = 8;
        
        GlowAct *redLightAct = [GlowAct alloc];
        redLightAct.name = @"The RedLight act";
        redLightAct.startTime = @"22:00";
        redLightAct.rating = 7;
        
        City *city = [[City alloc] init];
        city.name = @"Eindhoven";
        city.population = 220000;
        [city.glowActs addObject:@[blueLightAct]];
        [city.glowActs addObject:@[redLightAct]];

        [blueLightAct showOff];
        [city showInfo];

    }
    return 0;
}


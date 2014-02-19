//
//  City.h
//  HellGlow World
//
//  Created by Anh Tran on 13-02-14.
//  Copyright (c) 2014 Anh Tran. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GlowAct.h"

@interface City : NSObject
{
    
}

@property NSString* name;
@property NSInteger population;
@property NSMutableArray* glowActs;


-(void)showInfo;
-(id)init;

@end

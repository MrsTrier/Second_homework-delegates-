//
//  Kitchen.m
//  HW2
//
//  Created by Roman Cheremin on 05/10/2019.
//  Copyright © 2019 Roman Cheremin. All rights reserved.
//

#import "Kitchen.h"
#import "HelpingFunctions.h"


static const NSInteger maxTimeForCooking = 500;

@interface Kitchen ()

@property (nonatomic, assign) NSUInteger timePassed;
@property (nonatomic, assign) BOOL dishIsReady;

@end

@implementation Kitchen

- (instancetype)init
{
    self = [super init];
    if (self) {
        _timePassed = 0;
        _dishIsReady = NO;
    }
    return self;
}

- (void)startCooking
{
    HelpingFunctions * helper = [HelpingFunctions new];

    [self.delegate kitchenStartedCooking];
    while (_dishIsReady == NO && maxTimeForCooking >= _timePassed)
    {
        NSLog(@"Повара работают над блюдом");
        _dishIsReady = [helper getYesOrNo];
        if (maxTimeForCooking == _timePassed)
        {
            _dishIsReady = YES;
        }
    }
    [self passTheDishToWeiter];
}


- (void)passTheDishToWeiter
{
    [self.delegate dishIsReady];
}

@end

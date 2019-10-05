//
//  Guest.m
//  HW2
//
//  Created by Roman Cheremin on 05/10/2019.
//  Copyright © 2019 Roman Cheremin. All rights reserved.
//

#import "Guest.h"
#import "HelpingFunctions.h"

static const NSInteger maxTimeForChoosing = 100;

@interface Guest ()

@property (nonatomic, assign) NSUInteger timePassed;
@property (nonatomic, assign) BOOL decisionIsReady;

@end

@implementation Guest

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.timePassed = 0;
        _decisionIsReady = NO;
    }
    return self;
}

- (void)makeTheOrder
{
    HelpingFunctions * helper = [HelpingFunctions new];
    
    NSLog(@"Официант принес меню гостю");
    while (_decisionIsReady == NO && maxTimeForChoosing >= _timePassed)
    {
        NSLog(@"Гость изучает меню");
        _decisionIsReady = [helper getYesOrNo];
        if (maxTimeForChoosing == _timePassed)
        {
            _decisionIsReady = YES;
        }
        _timePassed++;
    }
    NSLog(@"Выбор сделан!");
    [self.delegate guestIsReadyWithOrder];
}

- (void)tryDishAndPay
{
    NSLog(@"Официант принес блюдо гостю");
    NSLog(@"(Гость): -- 'Благодарю! Блюдо выглядит аппетитно'");
    [self.delegate guestIsEating];
    [self leaveTips];
}

- (void)leaveTips
{
    HelpingFunctions * helper = [HelpingFunctions new];
    
    if ([helper getYesOrNo])
    {
        [self.delegate guestLeavedTips];
    }
    NSLog(@"(Гость): -- 'Спасибо, до свиданья'");
    [self.delegate guestLeavedRestaurant];
}
@end

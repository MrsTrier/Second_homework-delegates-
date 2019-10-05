//
//  Weiter.m
//  HW2
//
//  Created by Roman Cheremin on 05/10/2019.
//  Copyright © 2019 Roman Cheremin. All rights reserved.
//
#import "Weiter.h"
#import "ProtocolForWeiter.h"
#import "Guest.h"
#import "Kitchen.h"
#import "KitchenProtocol.h"

@interface Weiter () <ProtocolForWeiter, KitchenProtocol>

@property (nonatomic, strong) Guest *guest;
@property (nonatomic, strong) Kitchen *chef;


@end

@implementation Weiter

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.guest = [Guest new];
        self.guest.delegate = self;
        self.chef = [Kitchen new];
        self.chef.delegate = self;
        
        [self.guest makeTheOrder];
        [self.chef startCooking];
        [self.guest tryDishAndPay];
    }
    return self;
}

- (void)guestIsReadyWithOrder
{
    NSLog(@"Официант узнал, что гость готов сделать заказ");
    NSLog(@"Официант принимает заказ");
    NSLog(@"(Официант): -- 'Что мы могли бы для вас приготовить?'");
}

- (void)guestIsEating
{
    NSLog(@"Гость кушает, официанту можно отдохнуть!");
}

- (void)guestLeavedTips
{
    NSLog(@"Официант счастлив, ведь он получил чаевые!");
}

- (void)guestLeavedRestaurant
{
    NSLog(@"Гости ушли и официант начинает убирать стол...");

}

- (void)kitchenStartedCooking
{
    NSLog(@"Официант передал заказ и кухня приступила к готовке");
}

- (void)dishIsReady
{
    NSLog(@"(Кухня): --'Блюдо для гостя готово! Официант бегом на кухню!'");
}
@end

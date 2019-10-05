//
//  ProtocolForWeiter.h
//  HW2
//
//  Created by Roman Cheremin on 05/10/2019.
//  Copyright © 2019 Roman Cheremin. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 Протокол для делегата, с помощью которого официант узнает о действиях гостя ресторана
 */
@protocol ProtocolForWeiter <NSObject>

/**
 Гость готов сделать заказ
 */
- (void)guestIsReadyWithOrder;


/**
 Гость начал кушать
 */
- (void)guestIsEating;


/**
 Гость оставил чаевые
 */
- (void)guestLeavedTips;


/**
 Гость ушел
 */
- (void)guestLeavedRestaurant;

@end

//
//  Guest.h
//  HW2
//
//  Created by Roman Cheremin on 05/10/2019.
//  Copyright © 2019 Roman Cheremin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ProtocolForWeiter.h"

/**
 Класс для создания типовых сущностей типа "Гость" с делегатом исполняющим ProtocolForWeiter
 */
@interface Guest : NSObject

@property (nonatomic, weak) id <ProtocolForWeiter> delegate;

/**
 Метод, внутри которого реализован заказ блюда у официанта
 */
- (void)makeTheOrder;


/**
 Метод, внутри которого реализовано получение заказа гостем
 */
- (void)tryDishAndPay;

/**
 Метод, где гость принимает решение оставить чаевые или нет
 */
- (void)leaveTips;

@end

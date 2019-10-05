//
//  Kitchen.h
//  HW2
//
//  Created by Roman Cheremin on 05/10/2019.
//  Copyright © 2019 Roman Cheremin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KitchenProtocol.h"


/**
 Класс для создания типовых сущностей типа "Кухня с делегатом исполняющим KitchenProtocol"
 */
@interface Kitchen : NSObject

@property (nonatomic, weak) id <KitchenProtocol> delegate;

/**
 Метод где реализовано приготовление блюда
 */
- (void)startCooking;


/**
 Метод для передачи готового блюда официанту
 */
- (void)passTheDishToWeiter;

@end

//
//  KitchenProtocol.h
//  HW2
//
//  Created by Roman Cheremin on 05/10/2019.
//  Copyright © 2019 Roman Cheremin. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 Протокол для делегата, с помощью которого официант узнает о действиях на кухне ресторана
 */
@protocol KitchenProtocol <NSObject>


/**
 Кухня приступила к преготовлению заказа
 */
- (void)kitchenStartedCooking;


/**
 Кухня приготовила заказ
 */
- (void)dishIsReady;

@end



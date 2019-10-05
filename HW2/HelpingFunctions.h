//
//  HelpingFunctions.h
//  HW2
//
//  Created by Roman Cheremin on 05/10/2019.
//  Copyright © 2019 Roman Cheremin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/**
 Класс хранящий вспомогательные функции
 */
@interface HelpingFunctions : NSObject


/**
 Функция с равной вероятностью возвращающая случайное значение

 @return yes или no
 */
- (BOOL)getYesOrNo;

@end

NS_ASSUME_NONNULL_END

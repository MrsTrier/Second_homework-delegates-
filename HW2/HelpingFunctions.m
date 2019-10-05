//
//  HelpingFunctions.m
//  HW2
//
//  Created by Roman Cheremin on 05/10/2019.
//  Copyright © 2019 Roman Cheremin. All rights reserved.
//

#import "HelpingFunctions.h"

@implementation HelpingFunctions

- (BOOL) getYesOrNo
{
    int tmp = (arc4random() % 30) + 1;
    
    if (tmp % 5 == 0)
    {
        return YES;
    }
    return NO;
}

@end

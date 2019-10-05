//
//  ViewController.m
//  HW2
//
//  Created by Roman Cheremin on 05/10/2019.
//  Copyright © 2019 Roman Cheremin. All rights reserved.
//

#import "ViewController.h"
#import "ProtocolForWeiter.h"
#import "Guest.h"
#import "Weiter.h"


@interface ViewController ()

@property (nonatomic, strong) Weiter *weiter;

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.weiter = [Weiter new];
    
    
//    self.weiter
    // Do any additional setup after loading the view.
}


@end

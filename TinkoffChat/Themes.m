//
//  Themes.m
//  TinkoffChat
//
//  Created by Александр on 07.04.18.
//  Copyright © 2018 TCS. All rights reserved.
//

#import "Themes.h"

@implementation Themes

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.theme1 = [UIColor blueColor];
        self.theme2 = [UIColor greenColor];
        self.theme3 = [UIColor yellowColor];
    }
    return self;
}

@end

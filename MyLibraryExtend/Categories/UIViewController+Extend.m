//
//  UIViewController+Extend.m
//  MyLibraryExtend
//
//  Created by Quynh Nguyen on 1/7/15.
//  Copyright (c) 2015 Quynh Nguyen. All rights reserved.
//

#import "UIViewController+Extend.h"

#define TAG_TRANSPERANT_VIEW        123456
#define TAG_LOADING_VIEW            1234567

@implementation UIViewController (Extend)

- (void)addLayerTransperant
{
    UIView *transperantView = [[UIView alloc] initWithFrame:self.view.bounds];
    transperantView.backgroundColor = [UIColor clearColor];
    transperantView.tag = TAG_TRANSPERANT_VIEW;
    [self.view addSubview:transperantView];
}

- (void)removeLayerTransperant
{
    [[self.view viewWithTag:TAG_TRANSPERANT_VIEW] removeFromSuperview];
}

@end

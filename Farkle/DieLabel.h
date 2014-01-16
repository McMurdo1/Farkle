//
//  DieLabel.h
//  Farkle
//
//  Created by Matthew Graham on 1/15/14.
//  Copyright (c) 2014 Matthew Graham. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DieLabelDelegate.h"


@interface DieLabel : UILabel

@property id<DieLabelDelegate> delegate;

-(void)roll;

@end

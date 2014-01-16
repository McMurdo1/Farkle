//
//  DieLabelDelegate.h
//  Farkle
//
//  Created by Matthew Graham on 1/15/14.
//  Copyright (c) 2014 Matthew Graham. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DieLabel;

@protocol DieLabelDelegate <NSObject>

-(void)didChooseDie:(DieLabel*)dieLabel;


@end

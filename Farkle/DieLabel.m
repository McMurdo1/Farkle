//
//  DieLabel.m
//  Farkle
//
//  Created by Matthew Graham on 1/15/14.
//  Copyright (c) 2014 Matthew Graham. All rights reserved.
//

#import "DieLabel.h"
#include "stdlib.h"

@implementation DieLabel
{
    
}



- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(IBAction)labelWasTapped:(id)sender
{
    [_delegate didChooseDie:self];

    
}


-(void)roll
{
    int dieRoll = (arc4random()%6) + 1;
    self.text = [NSString stringWithFormat:@"%d",dieRoll];

}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end

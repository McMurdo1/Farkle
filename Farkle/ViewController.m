//
//  ViewController.m
//  Farkle
//
//  Created by Matthew Graham on 1/15/14.
//  Copyright (c) 2014 Matthew Graham. All rights reserved.
//

#import "ViewController.h"
#import "DieLabel.h"

@interface ViewController () <DieLabelDelegate>

{
    __weak IBOutlet DieLabel *dieLabel1;
    __weak IBOutlet DieLabel *dieLabel2;
    __weak IBOutlet DieLabel *dieLabel3;
    __weak IBOutlet DieLabel *dieLabel4;
    __weak IBOutlet DieLabel *dieLabel5;
    __weak IBOutlet DieLabel *dieLabel6;
    NSMutableArray *dice;
    __weak IBOutlet UILabel *userScore;
    int turn;
    int bank;
    __weak IBOutlet UILabel *messageBoard;
    UILabel *firstDie;
    UILabel *secondDie;
    UILabel *thirdDie;
    UILabel *fourthDie;
    UILabel *fifthDie;
    UILabel *sixthDie;
    
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    dice = [NSMutableArray new];
    dieLabel1.delegate = self;
    dieLabel2.delegate = self;
    dieLabel3.delegate = self;
    dieLabel4.delegate = self;
    dieLabel5.delegate = self;
    dieLabel6.delegate = self;
    turn = 0;
}



- (IBAction)onRollButtonPressed:(id)sender
{
    if (![dice containsObject:dieLabel1])
    {
        [dieLabel1 roll];
    }
    if (![dice containsObject:dieLabel2])
    {
        [dieLabel2 roll];
    }
    if (![dice containsObject:dieLabel3])
    {
        [dieLabel3 roll];
    }
    if (![dice containsObject:dieLabel4])
    {
        [dieLabel4 roll];
    }
    if (![dice containsObject:dieLabel5])
    {
        [dieLabel5 roll];
    }
    if (![dice containsObject:dieLabel6])
    {
        [dieLabel6 roll];
    }
    turn++;
}

- (void)didChooseDie:(DieLabel*)dieLabel
{
    
    if (turn > 0)
    {
        DieLabel *selectedDie = [DieLabel new];
        selectedDie = dieLabel;
        dieLabel.backgroundColor = [UIColor redColor];
        [dice addObject:selectedDie];
        [self calculateScore:dice];
        
    }
    else
    {
        messageBoard.text = @"Please roll the dice first";
    }
}

- (IBAction)onBankButtonPressed:(id)sender
{
    NSString *userCurrentScore = userScore.text;
    int userScoreInt = [userCurrentScore intValue];
    userScoreInt = userScoreInt + bank;
    userScore.text = [NSString stringWithFormat:@"%i",userScoreInt];
    
}

-(void)calculateScore:(NSMutableArray *)NSMutableArray
{
    if (NSMutableArray.count == 1)
    {
        firstDie = [NSMutableArray objectAtIndex:0];
        [self evaluateDie:firstDie];
        
    }
    if (NSMutableArray.count == 2)
    {
        firstDie = [NSMutableArray objectAtIndex:0];
        [self evaluateDie:firstDie];
        secondDie = [NSMutableArray objectAtIndex:1];
        [self evaluateDie:secondDie];
    }
    if (NSMutableArray.count == 3)
    {
        firstDie = [NSMutableArray objectAtIndex:0];
        secondDie = [NSMutableArray objectAtIndex:1];
        thirdDie = [NSMutableArray objectAtIndex:2];
    }
    if (NSMutableArray.count == 4)
    {
        firstDie = [NSMutableArray objectAtIndex:0];
        secondDie = [NSMutableArray objectAtIndex:1];
        thirdDie = [NSMutableArray objectAtIndex:2];
        fourthDie = [NSMutableArray objectAtIndex:3];
    }
    if (NSMutableArray.count == 5)
    {
        firstDie = [NSMutableArray objectAtIndex:0];
        secondDie = [NSMutableArray objectAtIndex:1];
        thirdDie = [NSMutableArray objectAtIndex:2];
        fourthDie = [NSMutableArray objectAtIndex:3];
        fifthDie = [NSMutableArray objectAtIndex:4];
    }
    if (NSMutableArray.count == 6)
    {
        firstDie = [NSMutableArray objectAtIndex:0];
        secondDie = [NSMutableArray objectAtIndex:1];
        thirdDie = [NSMutableArray objectAtIndex:2];
        fourthDie = [NSMutableArray objectAtIndex:3];
        fifthDie = [NSMutableArray objectAtIndex:4];
        sixthDie = [NSMutableArray objectAtIndex:5];
    }
}

-(void)evaluateDie:(UILabel*)UILabel
{
    if ([UILabel.text isEqualToString:@"1"])
    {
        bank = bank + 100;
    }
    if ([UILabel.text isEqualToString:@"5"])
    {
        bank = bank + 50;
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  DSViewController.m
//  Farkle
//
//  Created by Dan Szeezil on 3/19/14.
//  Copyright (c) 2014 Dan Szeezil. All rights reserved.
//

#import "DSViewController.h"
#import "DieLabel.h"
#import "DieLabelDelegate.h"

@interface DSViewController () <DieLabelDelegate>

@property NSMutableArray *dice;
@property NSInteger numberOfRolls;

@property (weak, nonatomic) IBOutlet UILabel *userScore;


@end



@implementation DSViewController

- (void)viewDidLoad
{
    
    [super viewDidLoad];
   
    self.dice = [[NSMutableArray alloc]init];
  
    self.userScore.text = @"12500";
    
    
	
}



-(void)didChooseDie:(UILabel *)dieLabel {
    
//    do i need to set up alpha and make these un-tap-able?
  
    
    //add the dice label to the array for re-rolls
    [self.dice addObject:dieLabel];

    
//    [self.delegate didChooseDie:self];
    
    dieLabel.backgroundColor = [UIColor lightGrayColor];
    
}



-(IBAction)onRollButtonPressed:(DieLabel *)sender {
    
    if (self.numberOfRolls == 0)
    {
        for (DieLabel *dieLabel in self.view.subviews)
        {
            if ([dieLabel isKindOfClass:[DieLabel class]])
            {
                [dieLabel roll];
                dieLabel.delegate = self;
            }
        }
    }
    else
    {
        for (DieLabel *dieLabel in self.view.subviews)
        {
            if ([dieLabel isKindOfClass:[DieLabel class]])
            {
                if (![self.dice containsObject:dieLabel])
                {
                    [dieLabel roll];
                }
                
                
            }
        }
        
    }
    self.numberOfRolls++;
    
}






//- (void)didChooseDie:(DieLabel*)dieLabel
//{
//    //add the dice label to the array for re-rolls
//    [self.dice addObject:dieLabel];
//    
//    //change the background color of dice which are saved
//    dieLabel.backgroundColor = [UIColor lightGrayColor];
//    
//    //
//    [self deterimenScoreForTurn];
//}




@end











//
//  DieLabel.m
//  Farkle
//
//  Created by Dan Szeezil on 3/19/14.
//  Copyright (c) 2014 Dan Szeezil. All rights reserved.
//

#import "DieLabel.h"


@implementation DieLabel



-(IBAction)labelWasTapped:(id)sender {
     
//    Tell delegate which label was tapped
//    self.delegate is the VC and self is the dieLabel - which die was tapped
//    Call didChooseDie on self (the 1 die tapped) and then tell the delegate (VC)
    [self.delegate didChooseDie:self];
    
}


-(void)roll {
    int r = arc4random()%6 + 1;
    
    self.text = [NSString stringWithFormat:@"%d", r];
}


//-(IBAction)onRollButtonPressed:(DieLabel *)sender {
//    
//    for (int i = 1; i < 7; i++) {
//        [self.text isEqualToString:@"i"];
//        
//        [self roll];
//    }
//}





@end

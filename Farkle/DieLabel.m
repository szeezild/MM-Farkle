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
 
//    tell roll which single die was tapped
//    [self roll];

    
//    tell delegate which label was tapped
    [self.delegate didChooseDie:self];
    
}


-(void)roll {
    int r = arc4random()%6 + 1;
    
    self.text = [NSString stringWithFormat:@"%d", r];
}

-(IBAction)onRollButtonPressed:(DieLabel *)sender {
    
    for (int i = 1; i < 7; i++) {
        [self.text isEqualToString:@"i"];
        
        
        [self roll];
        
        
    }
}


//-(IBAction)onRollButtonPressed:(DieLabel *)sender {
//    
//    for (int i = 1; i < 7; i++) {
//        [self.text isEqualToString:@"i"];
//        
//        
//        [self roll];
//        
//        
//    }
//}



@end

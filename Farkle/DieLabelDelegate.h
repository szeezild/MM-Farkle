//
//  DieLabelDelegate.h
//  Farkle
//
//  Created by Dan Szeezil on 3/19/14.
//  Copyright (c) 2014 Dan Szeezil. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DieLabel.h"

@protocol DieLabelDelegate <NSObject>



-(void)didChooseDie:(id)dieLabel;


@end

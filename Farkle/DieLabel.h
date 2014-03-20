//
//  DieLabel.h
//  Farkle
//
//  Created by Dan Szeezil on 3/19/14.
//  Copyright (c) 2014 Dan Szeezil. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DieLabelDelegate.h"


@interface DieLabel : UILabel

@property id<DieLabelDelegate> delegate;


-(void)roll;


@end

//
//  ViewController.h
//  myDelegateTestXib
//
//  Created by Gabriel Massana on 25/06/2013.
//  Copyright (c) 2013 Gabriel Massana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"

@interface ViewController : UIViewController <TextFieldTextGoBackDelegate>

@property (retain, nonatomic) IBOutlet UILabel *label;
@property (retain, nonatomic) IBOutlet UIButton *buttonGo;

@end

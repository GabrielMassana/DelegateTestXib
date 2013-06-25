//
//  SecondViewController.h
//  myDelegateTestXib
//
//  Created by Gabriel Massana on 25/06/2013.
//  Copyright (c) 2013 Gabriel Massana. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TextFieldTextGoBackDelegate <NSObject>

- (void) labelDidShowText: (NSString *) text;

@end

@interface SecondViewController : UIViewController
{
    id myDelegate;
}

@property (retain, nonatomic) IBOutlet UIButton *buttonBack;
@property (retain, nonatomic) IBOutlet UITextField *textField;

@property (nonatomic, assign) id<TextFieldTextGoBackDelegate> myDelegate;


- (IBAction)backButtonClicked:(id)sender;
@end

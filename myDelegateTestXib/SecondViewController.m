//
//  SecondViewController.m
//  myDelegateTestXib
//
//  Created by Gabriel Massana on 25/06/2013.
//  Copyright (c) 2013 Gabriel Massana. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

@synthesize myDelegate = _myDelegate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_buttonBack release];
    [_textField release];
    [super dealloc];
}
- (IBAction)backButtonClicked:(id)sender
{
    if ([_myDelegate respondsToSelector:@selector(labelDidShowText:)])
    {
        [_myDelegate labelDidShowText:self.textField.text];
    }
    
    [self dismissViewControllerAnimated:NO completion:nil];

}
@end

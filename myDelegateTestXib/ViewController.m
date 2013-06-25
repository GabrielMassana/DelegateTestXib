//
//  ViewController.m
//  myDelegateTestXib
//
//  Created by Gabriel Massana on 25/06/2013.
//  Copyright (c) 2013 Gabriel Massana. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    [self.buttonGo addTarget:self action:@selector(goToSecondView:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_label release];
    [_buttonGo release];
    [super dealloc];
}

- (void) labelDidShowText:(NSString *)text
{
    [self.label setText:text];
}

- (void) goToSecondView: (id) sender
{
    SecondViewController *secondViewController = [[[SecondViewController alloc] initWithNibName: @"SecondViewController" bundle:nil] autorelease];
    secondViewController.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    secondViewController.myDelegate = self;
    [self presentViewController:secondViewController animated:YES completion:NULL];
}

@end

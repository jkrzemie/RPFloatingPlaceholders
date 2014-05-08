//
//  ViewController.m
//  FloatLabeledTextViewExample
//
//  Created by Rob Phillips on 10/19/13.
//  Copyright (c) 2013 Rob Phillips. All rights reserved.
//

#import "ViewController.h"
#import "RPFloatingPlaceholderTextField.h"
#import "RPFloatingPlaceholderTextView.h"

@interface ViewController ()

@property (nonatomic, strong) RPFloatingPlaceholderTextView *flAlTextView;
@property (nonatomic, strong) RPFloatingPlaceholderTextField *flAlTextField;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the code below to add a text field programmatically
    /**
    CGRect frame = CGRectMake(20.f, 20.f, 273.f, 30.f);
    RPFloatingPlaceholderTextField *flTextField = [[RPFloatingPlaceholderTextField alloc] initWithFrame:frame];
    flTextField.floatingLabelActiveTextColor = [UIColor blueColor];
    flTextField.floatingLabelInactiveTextColor = [UIColor grayColor];
    flTextField.placeholder = @"This is a single-line text field";
    flTextField.font = [UIFont fontWithName:@"Helvetica" size:16.f];
    //flTextField.animationDirection = RPFloatingPlaceholderAnimateDownward; // You can change animation direction
    //flTextField.text = @"I love lamp."; // You can set text after it's been initialized
    [self.view addSubview:flTextField];
     */
    
    // Uncomment the code below to add a text view programmatically
    /**
    CGRect frame2 = CGRectMake(20.f, 76.f, 273.f, 95.f);
    RPFloatingPlaceholderTextView *flTextView = [[RPFloatingPlaceholderTextView alloc] initWithFrame:frame2];
    flTextView.floatingLabelActiveTextColor = [UIColor blueColor];
    flTextView.floatingLabelInactiveTextColor = [UIColor grayColor];
    flTextView.placeholder = @"Tell me about yourself";
    flTextView.font = [UIFont fontWithName:@"Helvetica" size:16.f];
    //flTextView.text = @"I love lamp.  This is pre-existing text."; // You can set text after it's been initialized
    [self.view addSubview:flTextView];
     */
    
    _flAlTextField = [[RPFloatingPlaceholderTextField alloc] init];
    _flAlTextField.floatingLabelActiveTextColor = [UIColor blueColor];
    _flAlTextField.floatingLabelInactiveTextColor = [UIColor grayColor];
    _flAlTextField.placeholder = @"This text field is layed out with VFL";
    _flAlTextField.font = [UIFont fontWithName:@"Helvetica" size:16.f];
    _flAlTextField.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:_flAlTextField];
    
    _flAlTextView = [[RPFloatingPlaceholderTextView alloc] init];
    _flAlTextView.floatingLabelActiveTextColor = [UIColor blueColor];
    _flAlTextView.floatingLabelInactiveTextColor = [UIColor grayColor];
    _flAlTextView.placeholder = @"This text view is layed out with VFL";
    _flAlTextView.font = [UIFont fontWithName:@"Helvetica" size:16.f];
    _flAlTextView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:_flAlTextView];
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[_flAlTextField]-|"
                                                                      options:0 metrics:nil
                                                                        views:NSDictionaryOfVariableBindings(_flAlTextField)]];
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[_flAlTextView]-|"
                                                                      options:0 metrics:nil
                                                                        views:NSDictionaryOfVariableBindings(_flAlTextView)]];
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[_flTextView]-20-[_flAlTextField(==40)]-20-[_flAlTextView(==40)]"
                                                                      options:0
                                                                      metrics:nil
                                                                        views:NSDictionaryOfVariableBindings(_flTextView,_flAlTextView,_flAlTextField)]];
    
}

-(void)viewDidLayoutSubviews
{
    [_flAlTextField adjustFrames];
    [_flAlTextView adjustFrames];
}

- (IBAction)dismissKeyboard:(id)sender
{
    [self.view endEditing:YES];
}

@end

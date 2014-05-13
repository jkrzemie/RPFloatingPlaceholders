//
//  DynamicViewController.m
//  FloatLabeledTextViewExample
//
//  Created by Jakub Krzemien on 13.05.2014.
//  Copyright (c) 2014 Rob Phillips. All rights reserved.
//

#import "DynamicViewController.h"
#import "RPFloatingPlaceholderTextView.h"

@interface DynamicViewController ()

@property (nonatomic, strong) RPFloatingPlaceholderTextView *firstnameTextView;
@property (nonatomic, strong) RPFloatingPlaceholderTextView *lastnameTextView;
@property (nonatomic, strong) RPFloatingPlaceholderTextView *emailTextView;

@end

@implementation DynamicViewController

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
    
    UIFont *font = [UIFont systemFontOfSize:12];
    
    _firstnameTextView = [[RPFloatingPlaceholderTextView alloc] init];
    _firstnameTextView.font = font;
    _firstnameTextView.translatesAutoresizingMaskIntoConstraints = NO;
    _firstnameTextView.placeholder = @"Firstname";
    [_firstnameTextView setScrollEnabled:NO];
    [self.view addSubview:_firstnameTextView];
  
    _lastnameTextView = [[RPFloatingPlaceholderTextView alloc] init];
    _lastnameTextView.font = font;
    _lastnameTextView.translatesAutoresizingMaskIntoConstraints = NO;
    _lastnameTextView.placeholder = @"Lastname";
    [_lastnameTextView setScrollEnabled:NO];
    [self.view addSubview:_lastnameTextView];
    
    _emailTextView = [[RPFloatingPlaceholderTextView alloc] init];
    _emailTextView.font = font;
    _emailTextView.translatesAutoresizingMaskIntoConstraints = NO;
    _emailTextView.placeholder = @"E-mail";
    [_emailTextView setScrollEnabled:NO];
    [self.view addSubview:_emailTextView];
    
    NSDictionary *viewsDictionary = NSDictionaryOfVariableBindings(_firstnameTextView, _lastnameTextView, _emailTextView);
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"|-20-[_firstnameTextView(>=280)]-20-|" options:0 metrics:nil views:viewsDictionary]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"|-[_lastnameTextView]-|" options:0 metrics:nil views:viewsDictionary]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"|-[_emailTextView]-|" options:0 metrics:nil views:viewsDictionary]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-100-[_firstnameTextView(>=40)]-[_lastnameTextView(>=40)]-[_emailTextView(>=40)]"
                                                                        options:NSLayoutFormatAlignAllCenterX
                                                                        metrics:nil
                                                                          views:viewsDictionary]];
}

-(void)viewDidLayoutSubviews
{
    [_firstnameTextView adjustFrames];
    [_lastnameTextView adjustFrames];
    [_emailTextView adjustFrames];
}

- (IBAction)dismissKeyboard:(id)sender
{
    [self.view endEditing:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

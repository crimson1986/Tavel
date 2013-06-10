//
//  BaseViewController.m
//  Travel
//
//  Created by Chirag shah on 25/05/13.
//  Copyright (c) 2013 Chirag shah. All rights reserved.
//

#import "BaseViewController.h"
#import "CustomNavigationBar.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

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
	// Do any additional setup after loading the view.
    self.navigationController.navigationBar.hidden = YES;
    [self.view addSubview:self.navigationBar];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark Custom Navigation Methods

- (CustomNavigationBar *)navigationBar {
    if (!_navigationBar) {
        _navigationBar = [CustomNavigationBar loadNibNamed:@"CustomNavigationBar"];
        _navigationBar.btnBack.hidden = YES;
        [_navigationBar.btnBack addTarget:self action:@selector(backClicked:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _navigationBar;
}

- (NSString *)navigationTitle {
    return self.navigationBar.navigationTitle.text;
}

- (void)setNavigationTitle:(NSString *)navigationTitle {
    self.navigationBar.navigationTitle.text = navigationTitle;
}

- (void)backClicked:(UIButton *)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)setBackButtonWithTitle:(NSString *)title {
    self.navigationBar.btnBack.hidden = NO;
    [self.navigationBar.btnBack setTitle:title forState:UIControlStateNormal];
}
@end

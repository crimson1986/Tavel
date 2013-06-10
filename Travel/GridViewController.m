//
//  GridViewController.m
//  Travel
//
//  Created by Chirag shah on 26/05/13.
//  Copyright (c) 2013 Chirag shah. All rights reserved.
//

#import "GridViewController.h"

@interface GridViewController ()

@end

@implementation GridViewController

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
    [self.view addSubview:self.gridView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//collection view
- (MMGridView *)gridView {
    if (!_gridView) {
        _gridView = [[MMGridView alloc] initWithFrame:CGRectZero];
    }
    return _gridView;
}

//no of tabs in menu
- (NSMutableArray *)arrayOfCell {
    if (!_arrayOfCell) {
        _arrayOfCell = [[NSMutableArray alloc] initWithCapacity:0];
    }
    return _arrayOfCell;
}

@end

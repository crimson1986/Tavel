//
//  ViewController.m
//  Travel
//
//  Created by Chirag shah on 24/05/13.
//  Copyright (c) 2013 Chirag shah. All rights reserved.
//

#import "MenuViewController.h"
#import "MMGridViewDefaultCell.h"
#import "ProvinceViewController.h"

@interface MenuViewController ()<MMGridViewDataSource,MMGridViewDelegate>

@end

@implementation MenuViewController
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.tabBarItem.title = localizedString(@"Menu");
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.navigationTitle = localizedString(@"MenuTitle");
    self.title = localizedString(@"Menu");
    [self createGridView];
    self.pageController.numberOfPages = self.gridView.numberOfPages;
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    CGRect rect = self.pageController.frame;
    rect.origin.y = CGRectGetMaxY(self.gridView.frame);
    self.pageController.frame = rect;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark Methods

- (void)createGridView {
    self.gridView.frame = CGRectMake(0,CGRectGetMaxY(self.navigationBar.frame), self.view.bounds.size.width, self.view.bounds.size.height-(CGRectGetHeight(self.pageController.frame)+CGRectGetMaxY(self.navigationBar.frame)));
    self.gridView.delegate = self;
    self.gridView.dataSource = self;
}

#pragma mark Setter/Getter


#pragma mark Collection Delegate
- (void)gridView:(MMGridView *)gridView didSelectCell:(MMGridViewCell *)cell atIndex:(NSUInteger)index {
    ProvinceViewController *province = [[ProvinceViewController alloc] initWithNibName:@"ProvinceViewController" bundle:nil];
    [self.navigationController pushViewController:province animated:YES];
}

- (void)gridView:(MMGridView *)gridView changedPageToIndex:(NSUInteger)index {
    self.pageController.currentPage = index;
}

- (void)gridView:(MMGridView *)gridView didDoubleTapCell:(MMGridViewCell *)cell atIndex:(NSUInteger)index {
    
}
#pragma mark Collection Data Source

- (NSInteger)numberOfCellsInGridView:(MMGridView *)gridView {
    return 14;//self.arrayOfTravelMenu.count;
}
- (MMGridViewCell *)gridView:(MMGridView *)gridView cellAtIndex:(NSUInteger)index {
    MMGridViewDefaultCell *cell = [[MMGridViewDefaultCell alloc] initWithFrame:CGRectZero];
    cell.textLabel.text = [NSString stringWithFormat:@"Cell %d",index];
    return cell;
}
- (void)viewDidUnload {
    [self setPageController:nil];
    [super viewDidUnload];
}
@end

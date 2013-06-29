//
//  CitiesViewController.m
//  Travel
//
//  Created by Chirag shah on 29/06/13.
//  Copyright (c) 2013 Chirag shah. All rights reserved.
//

#import "CitiesViewController.h"
#import "MMGridViewDefaultCell.h"
#import "MDActivity.h"

@interface CitiesViewController ()<MMGridViewDataSource,MMGridViewDelegate>

@end


@implementation CitiesViewController

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
    self.navigationTitle = localizedString(@"CitiesTitle");
    [self setBackButtonWithTitle:@"Back"];
    [self createGridView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark Methods

- (void)createGridView {
    self.gridView.frame = CGRectMake(0,CGRectGetMaxY(self.navigationBar.frame), self.view.bounds.size.width, self.view.bounds.size.height-(CGRectGetMaxY(self.navigationBar.frame)));
    self.gridView.delegate = self;
    self.gridView.dataSource = self;
}

#pragma mark Setter/Getter


#pragma mark Collection Delegate
- (void)gridView:(MMGridView *)gridView didSelectCell:(MMGridViewCell *)cell atIndex:(NSUInteger)index {
    
}
- (void)gridView:(MMGridView *)gridView changedPageToIndex:(NSUInteger)index {
    
}
- (void)gridView:(MMGridView *)gridView didDoubleTapCell:(MMGridViewCell *)cell atIndex:(NSUInteger)index {
    
}
#pragma mark Collection Data Source

- (NSInteger)numberOfCellsInGridView:(MMGridView *)gridView {
    return self.cities.count;
}
- (MMGridViewCell *)gridView:(MMGridView *)gridView cellAtIndex:(NSUInteger)index {
    MMGridViewDefaultCell *cell = [[MMGridViewDefaultCell alloc] initWithFrame:CGRectZero];
    MDActivity *ma = self.cities[index];
    cell.textLabel.text = nil;
    cell.imageView.image = [UIImage imageNamed:[ma imageName]];
    return cell;
}

@end

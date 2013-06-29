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
#import "MDMenuActivity.h"

@interface MenuViewController ()<MMGridViewDataSource,MMGridViewDelegate>
@property (nonatomic, strong) NSMutableArray *arrayOfTravelMenu;
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
#pragma mark Setter/Getter

- (NSMutableArray *)arrayOfTravelMenu {
    if (!_arrayOfTravelMenu) {
        _arrayOfTravelMenu = [[NSMutableArray alloc] initWithCapacity:0];
        [_arrayOfTravelMenu addObjectsFromArray:@[
         [MDMenuActivity activityWithTitle:@"Adventure" icon:@""],
         [MDMenuActivity activityWithTitle:@"Cycling" icon:@""],
         [MDMenuActivity activityWithTitle:@"Groups" icon:@""],
         [MDMenuActivity activityWithTitle:@"Horse riding" icon:@""],
         [MDMenuActivity activityWithTitle:@"Kitesurf" icon:@""],
         [MDMenuActivity activityWithTitle:@"Rock climbing" icon:@""],
         [MDMenuActivity activityWithTitle:@"Sailing" icon:@""],
         [MDMenuActivity activityWithTitle:@"Scuba diving" icon:@""],
         [MDMenuActivity activityWithTitle:@"Ski" icon:@""],
         [MDMenuActivity activityWithTitle:@"Sup" icon:@""],
         [MDMenuActivity activityWithTitle:@"Surf" icon:@""],
         [MDMenuActivity activityWithTitle:@"Walking" icon:@""],
         [MDMenuActivity activityWithTitle:@"Windsurf" icon:@""]
         
         ]];
    }
    return _arrayOfTravelMenu;
}

- (void)createGridView {
    self.gridView.frame = CGRectMake(0,CGRectGetMaxY(self.navigationBar.frame), self.view.bounds.size.width, self.view.bounds.size.height-(CGRectGetHeight(self.pageController.frame)+CGRectGetMaxY(self.navigationBar.frame)));
    self.gridView.delegate = self;
    self.gridView.dataSource = self;
}




#pragma mark Collection Delegate
- (void)gridView:(MMGridView *)gridView didSelectCell:(MMGridViewCell *)cell atIndex:(NSUInteger)index {
    ProvinceViewController *province = [[ProvinceViewController alloc] initWithNibName:@"ProvinceViewController" bundle:nil];
    MDMenuActivity *ma = self.arrayOfTravelMenu[index];
    province.provinces = ma.getProvince;
    [self.navigationController pushViewController:province animated:YES];
}

- (void)gridView:(MMGridView *)gridView changedPageToIndex:(NSUInteger)index {
    self.pageController.currentPage = index;
}

- (void)gridView:(MMGridView *)gridView didDoubleTapCell:(MMGridViewCell *)cell atIndex:(NSUInteger)index {
    
}
#pragma mark Collection Data Source

- (NSInteger)numberOfCellsInGridView:(MMGridView *)gridView {
    return self.arrayOfTravelMenu.count;
}
- (MMGridViewCell *)gridView:(MMGridView *)gridView cellAtIndex:(NSUInteger)index {
    MMGridViewDefaultCell *cell = [[MMGridViewDefaultCell alloc] initWithFrame:CGRectZero];
    MDMenuActivity *ma = self.arrayOfTravelMenu[index];
    cell.textLabel.text = ma.title;
    return cell;
}
- (void)viewDidUnload {
    [self setPageController:nil];
    [super viewDidUnload];
}
@end

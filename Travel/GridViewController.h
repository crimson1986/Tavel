//
//  GridViewController.h
//  Travel
//
//  Created by Chirag shah on 26/05/13.
//  Copyright (c) 2013 Chirag shah. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseViewController.h"
#import "MMGridView.h"

@interface GridViewController : BaseViewController
@property (nonatomic, strong) MMGridView *gridView;
@property (nonatomic, strong) NSMutableArray *arrayOfCell;
@end

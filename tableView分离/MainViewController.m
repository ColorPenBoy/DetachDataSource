//
//  MainViewController.m
//  tableView分离
//
//  Created by colorPen on 15/6/11.
//  Copyright (c) 2015年 colorPen. All rights reserved.
//

#import "MainViewController.h"
#import "ArrayDataSource.h"
#import "HS_Cell.h"
#import "HS_Cell+ConfigureForPhoto.h"
#import "Photo.h"

static NSString * const PhotoCellIdentifier = @"LTMyCell";

@interface MainViewController ()<UITableViewDelegate>

@property (nonatomic, strong) ArrayDataSource *photosArrayDataSource;
@property (nonatomic, strong)UITableView *mainTableView;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.mainTableView.backgroundColor = [UIColor clearColor];
    
    [self setupTableView];
    
}


- (void)setupTableView
{
    Photo *p = [[Photo alloc]init];
    
    NSMutableArray *photos = [p readModel];
    
    TableViewCellConfigureBlock configureCell = ^(HS_Cell *cell, Photo *photo) {
        [cell configureForPhoto:photo];
    };
    
    self.photosArrayDataSource = [[ArrayDataSource alloc] initWithItems:photos
                                                         cellIdentifier:PhotoCellIdentifier
                                                     configureCellBlock:configureCell];
    
    self.mainTableView.dataSource = self.photosArrayDataSource;
    
    [self.mainTableView registerNib:[HS_Cell nib] forCellReuseIdentifier:PhotoCellIdentifier];
    
}

#pragma mark UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"Click!");
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 95;
}

- (UITableView *)mainTableView
{
    if (!_mainTableView)
    {
        CGRect rect = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
        self.mainTableView = [[UITableView alloc]initWithFrame:rect style:UITableViewStylePlain];
        self.mainTableView.delegate = self;
        [self.view addSubview:self.mainTableView];
    }
    return _mainTableView;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

//
//  HS_Cell.h
//  tableView分离
//
//  Created by colorPen on 15/6/11.
//  Copyright (c) 2015年 colorPen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HS_Cell : UITableViewCell

+ (UINib *)nib;

@property (weak, nonatomic) IBOutlet UILabel *photoTitleLabel;

@property (weak, nonatomic) IBOutlet UIImageView *titleImage;


@end

//
//  HS_Cell+ConfigureForPhoto.m
//  tableView分离
//
//  Created by colorPen on 15/6/11.
//  Copyright (c) 2015年 colorPen. All rights reserved.
//

#import "HS_Cell+ConfigureForPhoto.h"
#import "Photo.h"
#import "UIImageView+WebCache.h"

@implementation HS_Cell (ConfigureForPhoto)


//为UITableViewCell布局
- (void)configureForPhoto:(Photo *)photo
{
    self.photoTitleLabel.text = photo.ghid;
    [self.titleImage sd_setImageWithURL:[NSURL URLWithString:photo.imageUrl]];
}

@end

//
//  HS_Cell+ConfigureForPhoto.h
//  tableView分离
//
//  Created by colorPen on 15/6/11.
//  Copyright (c) 2015年 colorPen. All rights reserved.
//

#import "HS_Cell.h"

@class Photo;

@interface HS_Cell (ConfigureForPhoto)

- (void)configureForPhoto:(Photo *)photo;

@end

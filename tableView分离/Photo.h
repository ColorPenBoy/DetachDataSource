//
//  Photo.h
//  tableView分离
//
//  Created by colorPen on 15/6/11.
//  Copyright (c) 2015年 colorPen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Photo : NSObject

@property (nonatomic, strong) NSString* ghid;
@property (nonatomic, strong) NSString* imageUrl;

- (NSMutableArray *)readModel;


@end

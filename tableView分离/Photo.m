//
//  Photo.m
//  tableView分离
//
//  Created by colorPen on 15/6/11.
//  Copyright (c) 2015年 colorPen. All rights reserved.
//

#import "Photo.h"

@implementation Photo

- (NSMutableArray *)readModel
{
    NSMutableArray *photos = [[NSMutableArray alloc]init];
    
    for (NSDictionary *subDict in [self getDataArray])
    {
        Photo *photo = [[Photo alloc]init];
        photo.ghid =  subDict[@"ghid"];
        photo.imageUrl = subDict[@"img"];
        [photos addObject:photo];
    }
    return photos;
}

- (NSArray *)getDataArray
{
    NSArray *dataArray =  @[
                            @{
                                @"ghid":@"188",
                                @"img" : @"http://zerogo-img.b0.upaiyun.com/2015/05/2015052816034631213img.jpg"
                                
                                },
                            @{
                                @"ghid":@"93",
                                @"img": @"http://zerogo-img.b0.upaiyun.com/2015/05/2015052807573474738img.jpg"
                                },
                            @{
                                @"ghid":@" 92",
                                @"img":@"http://zerogo-img.b0.upaiyun.com/2015/05/2015052807573474738img.jpg"
                                
                                },
                            @{
                                @"ghid":@"160",
                                @"img":@"http://zerogo-img.b0.upaiyun.com/2015/05/2015052816175380115img.jpg"
                                
                                },
                            @{
                                @"ghid":@"182",
                                @"img":@"http://zerogo-img.b0.upaiyun.com/2015/05/2015052816345127790img.jpg"
                                
                                },
                            @{
                                @"ghid":@"181",
                                @"img":@"http://zerogo-img.b0.upaiyun.com/2015/05/2015052816345127790img.jpg"
                                
                                },
                            @{
                                @"ghid":@"180",
                                @"img":@"http://zerogo-img.b0.upaiyun.com/2015/05/2015052816380538431img.jpg"
                                
                                },
                            @{
                                @"ghid":@"159",
                                @"img":@"http://zerogo-img.b0.upaiyun.com/2015/05/2015052816175380115img.jpg"
                                },
                            @{
                                @"ghid":@"164",
                                @"img":@"http://zerogo-img.b0.upaiyun.com/2015/05/2015052816345127790img.jpg"
                                },
                            @{
                                @"ghid": @"154",
                                @"img" : @"http://zerogo-img.b0.upaiyun.com/2015/05/2015052816025511207img.jpg"
                                }
                            ];
    return dataArray;
    
}


@end
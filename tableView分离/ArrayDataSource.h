//
//  ArrayDataSource.h
//  tableView分离
//
//  Created by colorPen on 15/6/11.
//  Copyright (c) 2015年 colorPen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
/**
 *  作为TableView的DataSource。目的是将DataSource从原本的ViewController中分离出来。
 */

typedef void (^TableViewCellConfigureBlock)(id cell, id item);


@interface ArrayDataSource : NSObject
/**
 *  DataSource的管理类接受三个变量进行初始化
 *
 *  @param anItems   存储表格数据的对象，里面存储封装好的对象，并不知道它是什么类型的，所以在使用的时候用id取出其中的元素。
 *  @param aCellIdentifier     单元格的标示符，用来指定TableView使用的单元格，是单元格的唯一标识，在创建和设计Cell的时候可以指定
 
 *  @param aConfigureCellBlock 一个用来设置每个单元格的block，因为具体的item格式我们并不知道，所以我们也就不知道该如何初始化一个cell里面的数据，需要用block进行设置，因为这个block的目的是为了将item的数据应用到cell上，所以block接受两个参数，cell和item。

 *
 *  @return <#return value description#>
 */
- (id)initWithItems:(NSArray *)anItems
     cellIdentifier:(NSString *)aCellIdentifier
 configureCellBlock:(TableViewCellConfigureBlock)aConfigureCellBlock;

- (id)itemAtIndexPath:(NSIndexPath *)indexPath;

@end



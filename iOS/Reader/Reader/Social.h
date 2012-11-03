//
//  Social.h
//  Reader
//
//  Created by Amir Ghoreshi on 10/18/12.
//  Copyright (c) 2012 Amir Ghoreshi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"
@interface Social : NSObject
@property (nonatomic, copy) NSString *username;
@property (nonatomic, copy) NSString *status;
@property (nonatomic, copy) Book *book;
@property (nonatomic, copy) UIImage *image;
@property (nonatomic, assign) float readed;
@end

//
//  Book.h
//  Reader
//
//  Created by Amir Ghoreshi on 10/17/12.
//  Copyright (c) 2012 Amir Ghoreshi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Book : NSObject
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *author;
@property (nonatomic, copy) NSString *text;
@property (nonatomic, copy) UIImage *image;
@property (nonatomic, assign) float readed;
@end

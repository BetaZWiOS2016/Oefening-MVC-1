//
//  BlogPost.h
//  Demo-MVC
//
//  Created by Jonathan Provo on 07/08/15.
//  Copyright (c) 2015. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BlogPost : NSObject

@property (strong, nonatomic, readonly) NSString *title;

+ (BlogPost *)createBlogPostWithTitle:(NSString *)title;

@end

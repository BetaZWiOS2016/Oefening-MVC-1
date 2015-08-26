//
//  BlogPost.m
//  Demo-MVC
//
//  Created by Jonathan Provo on 07/08/15.
//  Copyright (c) 2015. All rights reserved.
//

#import "BlogPost.h"

@implementation BlogPost

#pragma mark - Public

+ (BlogPost *)createBlogPostWithTitle:(NSString *)title
{
    BlogPost *blogPost = [BlogPost new];
#warning - set the title of the blogpost
    
    return blogPost;
}

@end

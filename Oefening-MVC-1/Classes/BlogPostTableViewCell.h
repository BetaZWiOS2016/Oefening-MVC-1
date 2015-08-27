//
//  BlogPostTableViewCell.h
//  Demo-MVC
//
//  Created by Jonathan Provo on 07/08/15.
//  Copyright (c) 2015. All rights reserved.
//

#import <UIKit/UIKit.h>

// you need to import the header files of any class you want to use
// always import .h files, never .m files
#import "BlogPost.h"

@interface BlogPostTableViewCell : UITableViewCell

- (void)configureForBlogPost:(BlogPost *)blogPost;

@end

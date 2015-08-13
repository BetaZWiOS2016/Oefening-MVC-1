//
//  BlogPostTableViewCell.m
//  Demo-MVC
//
//  Created by Jonathan Provo on 07/08/15.
//  Copyright (c) 2015 EASI. All rights reserved.
//

#import "BlogPostTableViewCell.h"

@interface BlogPostTableViewCell ()

#warning - connect this outlet
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@end

@implementation BlogPostTableViewCell

#pragma mark - Public

- (void)configureForBlogPost:(BlogPost *)blogPost
{
#warning - set the titleLabel's "text" property to the blogPosts's "title" property
}

@end

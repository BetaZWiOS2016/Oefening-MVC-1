//
//  BlogPostTableViewCell.m
//  Demo-MVC
//
//  Created by Jonathan Provo on 07/08/15.
//  Copyright (c) 2015. All rights reserved.
//

#import "BlogPostTableViewCell.h"

@interface BlogPostTableViewCell ()

//#warning - connect this outlet
// make sure to connect this outlet to UITableViewCell (!) in the storyboard
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@end

@implementation BlogPostTableViewCell

#pragma mark - Public

- (void)configureForBlogPost:(BlogPost *)blogPost
{
//#warning - set the titleLabel's "text" property to the blogPosts's "title" property
    // both lines do the same
    self.titleLabel.text = blogPost.title;          // this line is using the dot notation, only available on properties
    [[self titleLabel] setText:[blogPost title]];   // this line is using the methods (getter and setter) created for you when defining properties
}

@end

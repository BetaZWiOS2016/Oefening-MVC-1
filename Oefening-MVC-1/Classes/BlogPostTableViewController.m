//
//  BlogPostTableViewController.m
//  Demo-MVC
//
//  Created by Jonathan Provo on 07/08/15.
//  Copyright (c) 2015 EASI. All rights reserved.
//

#import "BlogPostTableViewController.h"

#import "BlogPost.h"
#import "BlogPostTableViewCell.h"

@interface BlogPostTableViewController () <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) NSArray *blogPosts;

- (IBAction)didTapShuffleButton:(UIBarButtonItem *)sender;
- (void)createBlogPosts;
- (NSArray *)shuffleArray:(NSArray *)array;

@end

@implementation BlogPostTableViewController

#pragma mark - Lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
#warning - blog posts should be created here
}

#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.blogPosts.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // get the view
    BlogPostTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"BlogPostCell" forIndexPath:indexPath];
    
    // get the model
    BlogPost *blogPost = self.blogPosts[indexPath.row];
    
#warning - configure the cell
    
    return cell;
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    // get the model
    BlogPost *blogPost = self.blogPosts[indexPath.row];
    
    // action based on the model
    NSString *title = @"Lorum ipsum";
    NSString *message = [NSString stringWithFormat:@"You selected: %@", blogPost.title];
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title message:message delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    [alertView show];
}

#pragma mark - IBAction

#warning - (wait with this exercise until the table view is working) add a button to this controller in Interface Builder (IB) and connect it to this IBAction to add the shuffle functionality
- (IBAction)didTapShuffleButton:(UIBarButtonItem *)sender
{
    [self createBlogPosts];
    [self.tableView reloadData];
}

#pragma mark - Private

- (void)createBlogPosts
{
    NSString *lorumIpsum = @"Donec ullamcorper nulla non metus auctor fringilla. Maecenas sed diam eget risus varius blandit sit amet non magna. Aenean lacinia bibendum nulla sed consectetur. Nullam quis risus eget urna mollis ornare vel eu leo. Maecenas faucibus mollis interdum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam id dolor id nibh ultricies vehicula ut id elit.";
    NSArray *words = [[[lorumIpsum stringByReplacingOccurrencesOfString:@"." withString:@""] stringByReplacingOccurrencesOfString:@"," withString:@""] componentsSeparatedByString:@" "];
    words = [self shuffleArray:words];
    
    NSMutableArray *posts = [NSMutableArray arrayWithCapacity:words.count];
    for (NSString *word in words) {
        BlogPost *post = [BlogPost createBlogPostWithTitle:word.lowercaseString];
        [posts addObject:post];
    }
    self.blogPosts = posts;
}

- (NSArray *)shuffleArray:(NSArray *)array
{
    NSMutableArray *shuffledArray = [NSMutableArray arrayWithArray:array];
    
    NSUInteger count = array.count;
    for (NSUInteger i = 0; i < count - 1; i++) {
        NSInteger remainingCount = count - i;
        NSInteger randomIndex = i + arc4random_uniform((u_int32_t )remainingCount);
        [shuffledArray exchangeObjectAtIndex:i withObjectAtIndex:randomIndex];
    }
    
    return shuffledArray;
}

@end

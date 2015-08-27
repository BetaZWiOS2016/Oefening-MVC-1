//
//  BlogPost.h
//  Demo-MVC
//
//  Created by Jonathan Provo on 07/08/15.
//  Copyright (c) 2015. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BlogPost : NSObject

//@property (strong, nonatomic, readonly) NSString *title;
// when you add `readonly` to a property, only the getter will be created for you, the setter will not exist
@property (strong, nonatomic) NSString *title;

+ (BlogPost *)createBlogPostWithTitle:(NSString *)title;

@end

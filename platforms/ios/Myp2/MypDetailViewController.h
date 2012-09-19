//
//  MypDetailViewController.h
//  Myp2
//
//  Created by James Hugman on 30/04/2012.
//  Copyright (c) 2012 RubyThree. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MypDetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) id detailItem;

@property (strong, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@property (weak, nonatomic) IBOutlet UIWebView *webView;

- (void)nslog;

@end

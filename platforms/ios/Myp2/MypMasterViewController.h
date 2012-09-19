//
//  MypMasterViewController.h
//  Myp2
//
//  Created by James Hugman on 30/04/2012.
//  Copyright (c) 2012 RubyThree. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <KirinKit/KirinKit.h>
#import "IMypMyp2Screen.h"

@class MypDetailViewController;

@interface MypMasterViewController : KirinUITableViewController <IMypMyp2Screen>

@property (strong, nonatomic) MypDetailViewController *detailViewController;

- (void)showAlert;

@end

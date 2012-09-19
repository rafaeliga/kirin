//
//  JViewController.h
//  Myp2
//
//  Created by Rafael Iga on 9/18/12.
//
//

#import <UIKit/UIKit.h>
#import <KirinKit/KirinKit.h>
#import "IMypMyp2Screen.h"

@interface JViewController : KirinUIViewController <IMypMyp2Screen>

@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UIWebView *webViewJ;
@property (weak, nonatomic) IBOutlet UIButton *button;
- (IBAction)btn:(id)sender;

- (void)showAlert;

@end

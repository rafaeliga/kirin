//
//  JViewController.m
//  Myp2
//
//  Created by Rafael Iga on 9/18/12.
//
//

#import "JViewController.h"
#import "IMypMyp2ScreenModule.h"
#import <KirinKit/KirinHelper.h>

@interface JViewController ()

@property(retain, nonatomic) id<IMypMyp2ScreenModule> screenModule;

@end

@implementation JViewController

@synthesize webView;
@synthesize webViewJ;
@synthesize button;

@synthesize screenModule = screenModule_;

@synthesize kirinHelper;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
//    self.kirinHelper = [KIRIN bindScreen: self withModule:@"MyModule"];
//    [self.kirinHelper onLoad];
    
//    self.screenModule = [self bindScreen:@"Myp2ScreenModule" withProtocol:@protocol(IMypMyp2ScreenModule)];
        
    webViewJ.delegate = self;
    
    NSString *htmlFile = [[NSBundle mainBundle] pathForResource:@"test" ofType:@"html" inDirectory:@""];
    NSString* htmlString = [NSString stringWithContentsOfFile:htmlFile encoding:NSUTF8StringEncoding error:nil];
    [webViewJ loadHTMLString:htmlString baseURL:nil];
}

- (void)viewDidUnload
{
    [self setWebViewJ:nil];
    [self setButton:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)btn:(id)sender
{
    
    NSString *returnvalue = [webViewJ stringByEvaluatingJavaScriptFromString:@"al('{\"id\": \"1\"}')"];
    
    NSLog(@"--- return: %@", returnvalue);

}

- (void)showAlert
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"yoooo"
                                                    message:@"oppppaaa"
                                                   delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert show];
}

- (BOOL)webView:(UIWebView*)webView shouldStartLoadWithRequest:(NSURLRequest*)request navigationType:(UIWebViewNavigationType)navigationType
{
    NSLog(@"2222222");
    NSURL *URL = [request URL];
    NSLog(@"--- %@", [URL scheme]);
    NSLog(@"--- %@", URL);
    
    if ([[URL scheme] isEqualToString:@"mp2"]) {
        NSLog(@"==== parse the rest of the URL object and execute functions");
    }
    
    return YES;
}

@end

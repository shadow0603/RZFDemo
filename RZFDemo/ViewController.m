//
//  ViewController.m
//  RZFDemo
//
//  Created by shadow on 2019/3/8.
//  Copyright © 2019 rzf. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *resetBtn;
@property (weak, nonatomic) IBOutlet UIButton *openButton;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

#pragma mark -
#pragma mark - action methods

- (IBAction)resetAction:(UIButton *)sender
{
    _textField.text = nil;
}
- (IBAction)openAction:(UIButton *)sender
{
    [_webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:_textField.text]]];
}

#pragma mark -
#pragma mark - webview delegate
-(BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
    return YES;
}
@end

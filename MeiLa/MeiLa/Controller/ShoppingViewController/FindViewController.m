//
//  FindViewController.m
//  MeiLa
//
//  Created by Mac on 16/11/28.
//  Copyright © 2016年 CH. All rights reserved.
//

#import "FindViewController.h"

@interface FindViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation FindViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationController.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"product_star_all_blank"] style:UIBarButtonItemStylePlain target:self action:@selector(share)];
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:self.webUrl]]];
   

}

-(void)share{
    
}

@end

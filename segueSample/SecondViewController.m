//
//  SecondViewController.m
//  segueSample
//
//  Created by katan_t on 12/09/30.
//  Copyright (c) 2012年 katan_t. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

@synthesize myValue = _myValue;
@synthesize delegate = _delegate;

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
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)pushBtn:(id)sender {
    NSLog(@"%@" , _myValue);//渡された変数の表示
    if ([_delegate respondsToSelector:@selector(finishView:)]){
        [_delegate finishView:@"finish"];//呼び出し元に渡す値の指定
    }
    [self dismissModalViewControllerAnimated:YES];
}

@end

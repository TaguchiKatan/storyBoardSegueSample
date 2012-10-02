//
//  ViewController.m
//  segueSample
//
//  Created by katan_t on 12/09/29.
//  Copyright (c) 2012年 katan_t. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)pushBtn:(id)sender {
    [self performSegueWithIdentifier:@"mySegue" sender:self];
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"mySegue"]) {
        SecondViewController *viewCon = segue.destinationViewController;
        viewCon.delegate = self;
        viewCon.myValue = @"test";//遷移先に渡す値
    }
}

- (void)finishView:(NSString*)returnValue{
    NSLog(@"%@" , returnValue);//渡された変数の表示
}

@end

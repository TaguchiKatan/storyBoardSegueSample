//
//  SecondViewController.h
//  segueSample
//
//  Created by katan_t on 12/09/30.
//  Copyright (c) 2012年 katan_t. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SecondViewDelegate<NSObject>
- (void)finishView:(NSString*)returnValue;
@end

@interface SecondViewController : UIViewController{
    NSString* _myValue;
    id<SecondViewDelegate> _delegate;
}

@property (nonatomic) NSString* myValue;
@property (nonatomic) id<SecondViewDelegate> delegate;

- (IBAction)pushBtn:(id)sender;

@end
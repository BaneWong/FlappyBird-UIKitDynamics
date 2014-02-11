//
//  ViewController.m
//  FlappyBird-UIKitDynamics
//
//  Created by Brian Rojas on 2/10/14.
//  Copyright (c) 2014 Brian Rojas. All rights reserved.
//

#import "GameStartViewController.h"

@interface GameStartViewController ()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@end

@implementation GameStartViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self shakeTitleMessage];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - Private methods

- (void)shakeTitleMessage
{
    [UIView animateWithDuration:0.4 delay:0.0 options:0 animations:^{
        CGRect frame = self.titleLabel.frame;
        frame.origin.y = 137.0f;
        self.titleLabel.frame = frame;
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:0.4 delay:0.0 options:0 animations:^{
            CGRect frame = self.titleLabel.frame;
            frame.origin.y = 145.0f;
            self.titleLabel.frame = frame;
        } completion:^(BOOL finished) {
            [self shakeTitleMessage];
        }];
    }];
}

@end

//
//  ViewController.m
//  ssh_config
//
//  Created by Takase Yusuke on 2015/01/14.
//  Copyright (c) 2015年 Takase Yusuke. All rights reserved.
//

#import "EditViewController.h"

@implementation EditViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

-(IBAction)backDidTap:(id)sender {
    [self dismissController: nil];
}

@end

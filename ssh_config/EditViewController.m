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

-(IBAction)closeEdit:(id)sender {
    [self dismissController: nil];
}

-(IBAction)showOpenPanel:(id)sender {
    NSOpenPanel *panel = [NSOpenPanel openPanel];
    [panel setCanChooseFiles:YES];
    [panel setCanChooseDirectories:NO];
    [panel setAllowsMultipleSelection:NO]; // yes if more than one dir is allowed
    
    NSInteger clicked = [panel runModal];
    
    if (clicked == NSFileHandlingPanelOKButton) {
        for (NSURL *url in [panel URLs]) {
            // do something with the url here.
            if (_secretKeyField) {
                [_secretKeyField setStringValue:
                    [[url absoluteString]stringByReplacingOccurrencesOfString:@"file://" withString:@""]];
            }
        }
    }
}


@end

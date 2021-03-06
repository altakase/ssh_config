//
//  ViewController.h
//  ssh_config
//
//  Created by Takase Yusuke on 2015/01/14.
//  Copyright (c) 2015年 Takase Yusuke. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface EditViewController : NSViewController

@property (strong) IBOutlet NSTextField *serverNameField;
@property (strong) IBOutlet NSTextField *hostNameField;
@property (strong) IBOutlet NSTextField *portField;
@property (strong) IBOutlet NSTextField *userNameField;
@property (strong) IBOutlet NSTextField *secretKeyField;

@end


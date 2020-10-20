//
//  ViewController.h
//  Djs
//
//  Created by Type-C on 2020/A/31.
//  Copyright © 2020 Type-C. All rights reserved.
//

#import <Cocoa/Cocoa.h>
@interface ViewController : NSViewController
@property (weak) IBOutlet NSTextField *timelabel;
@property (weak) IBOutlet NSButton *btn;
- (IBAction)btnAction:(NSButton *)sender;
@end


//
//  ViewController.m
//  Djs
//
//  Created by Type-C on 2020/A/31.
//  Copyright © 2020 Type-C. All rights reserved.
//

#import "ViewController.h"

@interface ViewController()
{
    NSTimer *timer;
    NSUInteger totalSeconds;
}

@end
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    totalSeconds = 20;
    
    
    // Do any additional setup after loading the view.
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}
- (void)changeLabelStr
{
    _timelabel.stringValue = [NSString stringWithFormat:@"%ld",(long)totalSeconds--];
    if (totalSeconds == 0){
        [timer invalidate];
    }
    
    
    
}

- (IBAction)btnAction:(NSButton *)sender {
    if(!timer){
        timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(changeLabelStr) userInfo:nil repeats:YES];
        [timer fire];
    }
}


@end

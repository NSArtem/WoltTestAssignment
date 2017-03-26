//
//  ViewController.m
//  Task
//
//  Created by Elias Pietilä on 18/04/16.
//  Copyright © 2016 Elias Pietilä. All rights reserved.
//

#import "ViewController.h"
#import <Intercom/Intercom.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)openIntercom:(id)sender
{
    [Intercom presentMessageComposer];
}
@end

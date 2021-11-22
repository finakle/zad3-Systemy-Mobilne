//
//  ViewController.m
//  Zad3_Putko
//
//  Created by student on 16/11/2021.
//  Copyright © 2021 pb. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [_informationButton setTitle:NSLocalizedString(@"Information", nil) forState:UIControlStateNormal];
    [self.image setImage:[UIImage imageNamed:NSLocalizedString(@"image", nil)]];    // Do any additional setup after loading the view.
}

- (IBAction) showinformation {
    UIAlertController *alertDialog= [UIAlertController alertControllerWithTitle: [NSString stringWithFormat:NSLocalizedString(@"Information", nil)]
                                     message:[NSString stringWithFormat:NSLocalizedString(@"Message", nil), 4]
     preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *defaultAction=[UIAlertAction actionWithTitle:@"OK"
                                                          style:UIAlertActionStyleDefault
                                                        handler:^(UIAlertAction *action){}];
    [alertDialog addAction:defaultAction];
    [self presentViewController:alertDialog animated:YES completion:nil];
}

@end

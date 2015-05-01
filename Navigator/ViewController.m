//
//  ViewController.m
//  Navigator
//
//  Created by jonathan thornburg on 4/28/15.
//  Copyright (c) 2015 jonathan thornburg. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(35.0, 100.0, 100.0, 44.0)];
    button.backgroundColor = [UIColor greenColor];
    
    [button addTarget:self action:@selector(pushNewViewController:)forControlEvents:UIControlEventTouchUpInside];
    
    UIStepper *stepper = [[UIStepper alloc]initWithFrame:CGRectMake(200.0, 200.0, 100.0, 100.0)];
    [self.view addSubview:stepper];
    
    [stepper addTarget:self action:@selector(stepperChanged:) forControlEvents:UIControlEventValueChanged];
    stepper.stepValue = 10.0;
    
    [self.view addSubview:button];
    
}

- (void) stepperChanged:(UIStepper *)sender
{
    NSLog(@"%@", @(sender.value));
}




- (void)pushNewViewController:(id)sender
{
    UIViewController *secondViewController = [[UIViewController alloc]init];
    secondViewController.view.backgroundColor = [UIColor redColor];
    secondViewController.title = @"Second";
    
    //UIBarButtonItem *button = [[UIBarButtonItem alloc]initWithTitle:@"Another target:<#(id)#> action:<#(SEL)#>]
    
    
    [self.navigationController pushViewController:secondViewController animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

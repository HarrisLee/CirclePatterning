//
//  ViewController.m
//  CirclePatterning
//
//  Created by Cao JianRong on 13-12-17.
//  Copyright (c) 2013年 Cao JianRong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _circleLineView = [[CircleLineView alloc] initWithFrame:CGRectMake(110, 120, 100, 100)];
    [_circleLineView drawCircle4Dgree:0.5*M_PI];
    [self.view addSubview:_circleLineView];
    [_circleLineView release];
    
    _circleLineView = [[CircleLineView alloc] initWithFrame:CGRectMake(110, 320, 100, 100)];
    [_circleLineView drawCircle4Dgree:0.7*M_PI withStrokeColor:[UIColor redColor] withBackgroundStrokeColor:[UIColor blueColor] withFillColor:[UIColor clearColor] withEdgeColor:[UIColor yellowColor]];
    [self.view addSubview:_circleLineView];
    [_circleLineView release];
    
    
    slope = [[UILabel alloc] initWithFrame:CGRectMake(110, 250, 100, 15)];
    slope.text = @"10000000.15";
    slope.textColor = [UIColor blackColor];
    slope.backgroundColor = [UIColor brownColor];
    slope.transform = CGAffineTransformMakeRotation(-M_PI_4);
    [self.view addSubview:slope];
    [slope release];
   
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 64, 100, 20)];
    label.text = @"Label Branch";
    label.font = [UIFont systemFontOfSize:13.0f];
    [self.view addSubview:label];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

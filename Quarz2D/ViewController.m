//
//  ViewController.m
//  Quarz2D
//
//  Created by SethYin on 2017/1/5.
//  Copyright © 2017年 yanhuihui. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    self.view.backgroundColor = [UIColor redColor];
    
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    //绘制路径
//    UIBezierPath *path = [UIBezierPath bezierPath];
//    //设置起点
//    [path moveToPoint: CGPointMake(20, 100)];
//    //添加一根线到终点
//    [path addLineToPoint:CGPointMake(20, 200)];
//    
//    //设置起点
//    [path moveToPoint:CGPointMake(30, 210)];
//    //添加一个曲线到某一个点
//    [path addQuadCurveToPoint:CGPointMake(250, 280) controlPoint:CGPointMake(50, 50)];
//    
//    //把绘制的内容保存到上下文当中
//    CGContextAddPath(context, path.CGPath) ;
//    //把上下文的内容显示到view上（渲染到view的layer上  stroke  fill）
//    CGContextStrokePath(context);
}
- (IBAction)valueChange:(UISlider *)sender {
    NSLog(@"%f",sender.value);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

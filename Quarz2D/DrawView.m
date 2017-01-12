//
//  DrawView.m
//  Quarz2D
//
//  Created by SethYin on 2017/1/5.
//  Copyright © 2017年 yanhuihui. All rights reserved.
//

#import "DrawView.h"

@implementation DrawView


- (void)drawRect:(CGRect)rect {
    // Drawing code
    //画椭圆
//    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(50, 50, 100, 50)];
//    //使用UIBezierPath提供的绘图方法进行绘制
//    [path stroke];
    
    //画弧 扇形
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(rect.size.width/2, rect.size.height/2) radius:80 startAngle:0 endAngle:M_PI*1.5 clockwise:NO];
    [path addLineToPoint:CGPointMake(rect.size.width/2, rect.size.height/2)];
    [[UIColor redColor]set];
//    [path closePath];
    //填充前会自动关闭路径
    [path fill];
}

-(void)DrawRect{
    //获取上下文
    CGContextRef context = UIGraphicsGetCurrentContext();
    //描述路径
    //矩形
    //    UIBezierPath *path = [UIBezierPath bezierPathWithRect:CGRectMake(50, 50, 200, 200)];
    
    
    
    //圆角矩形
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(50, 50, 200, 200) cornerRadius:35];
    
    
    [[UIColor redColor] set];
    //    UIBezierPath *path = [UIBezierPath bezierPath];
    //    //设置起点
    //        [path moveToPoint:CGPointMake(30, 210)];
    //        //添加一个曲线到某一个点
    //        [path addQuadCurveToPoint:CGPointMake(250, 280) controlPoint:CGPointMake(50, 50)];
    
    //把路径添加到上下文
    CGContextAddPath(context, path.CGPath);
    
    //把 上下文内容渲染到view上
    CGContextStrokePath(context);
    //    CGContextFillPath(context);
}

@end

//
//  LOLUIComponents.m
//  ObjCDemo
//
//  Created by Ludovic Ollagnier on 15/06/2021.
//

#import "LOLUIComponents.h"

@implementation LOLUIComponents

+ (UIButton *)styledButtonWithTint:(UIColor *)tintColor andBackground:(UIColor *)backgroundColor {

    UIButton *myButton = [[UIButton alloc] initWithFrame:CGRectMake(100, 400, 200, 50)];
    [myButton setTitle:@"Button" forState:UIControlStateNormal];
    [myButton setBackgroundColor: backgroundColor];
    [myButton setTintColor: UIColor.blackColor];

    return myButton;
}
@end

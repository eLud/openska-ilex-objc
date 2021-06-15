//
//  ViewController.m
//  ObjCDemo
//
//  Created by Ludovic Ollagnier on 14/06/2021.
//

#import "ViewController.h"
#import "LOLMeal.h"
#import "LOLUIComponents.h"

//Interface "privée"
//Inconnue des autres
@interface ViewController ()

@end

//Implémentation
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    NSLog(@"Hello world");

    UIButton *myButton = [LOLUIComponents styledButtonWithTint:UIColor.redColor andBackground:UIColor.blueColor];

    [self.view addSubview:myButton];

    LOLMeal *myMeal = [[LOLMeal alloc] initWithName:@"Test" andPrice:20];

    BOOL result = [myMeal respondsToSelector:@selector(copyWithZone:)];
    NSLog(@"%d", result);
    if (result) {
        LOLMeal *myCopy = [myMeal copy];
    }
}

@end

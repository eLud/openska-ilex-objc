//
//  ViewController.m
//  ObjCDemo
//
//  Created by Ludovic Ollagnier on 14/06/2021.
//

#import "ViewController.h"
#import "LOLMeal.h"

//Interface "privée"
//Inconnue des autres
@interface ViewController ()

@end

//Implémentation
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    LOLMeal *pizza = [[LOLMeal alloc] initWithName:@"Pizza" andPrice:10];
    LOLMeal *nilMeal = [[LOLMeal alloc] init];

    NSLog(@"%@", nilMeal.name);
    NSLog(@"%@", nilMeal.pitch);
    NSLog(@"%f", nilMeal.price);
}
@end

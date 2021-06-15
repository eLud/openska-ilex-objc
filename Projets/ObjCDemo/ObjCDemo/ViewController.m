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
//    LOLMeal *nilMeal = [[LOLMeal alloc] init];

    NSMutableString *mutString = [NSMutableString stringWithString:@"Hello"];
    [mutString appendString:@" World"];

    NSRange range = NSMakeRange(0, 5);
    [mutString replaceCharactersInRange:NSMakeRange(0, 5) withString:@"Salut"];
    NSLog(@"%@", mutString);

    NSArray *array = [[NSArray alloc] initWithObjects:@"A", @"B", @"C", nil];
    NSArray *array2 = [NSArray arrayWithObjects:@"A",@"B",@"C", nil];
    NSArray <NSString *> *array3 = @[@"A", @"B", @"C"];

    NSString *letter = [array3 objectAtIndex:2];
    NSString *letter2 = array3[2];

    NSDictionary *dico = [[NSDictionary alloc]
                          initWithObjectsAndKeys:@"Ludovic", @"firstName", nil];
    NSDictionary <NSString *, NSString *> *dico2 = @{@"firstName" : @"Ludovic", @"lastName" : @"Ollagnier"};

    NSString *fName = [dico2 objectForKey:@"firstName"];
    NSString *fName2 = dico2[@"firstName"];

    NSNumber *one = [NSNumber numberWithInt:1];
    NSNumber *two = @2;
    NSNumber *floatNumber = @2.5;

    BOOL isAwake = NO;

    NSNumber *boolNumber = @NO;

    NSLog(@"%f", floatNumber.floatValue);

}
@end

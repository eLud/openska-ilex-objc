//
//  MealDetailsViewController.m
//  ObjCDemo
//
//  Created by Ludovic Ollagnier on 17/06/2021.
//

#import "MealDetailsViewController.h"
#import "LOLMeal.h"

@interface MealDetailsViewController ()

@end

@implementation MealDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSLog(@"%@", self.meal);
    self.title = self.meal.name;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

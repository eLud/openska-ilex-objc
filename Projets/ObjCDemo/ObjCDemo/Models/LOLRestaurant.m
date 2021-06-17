//
//  LOLRestaurant.m
//  ObjCDemo
//
//  Created by Ludovic Ollagnier on 14/06/2021.
//

#import "LOLRestaurant.h"

@interface LOLRestaurant ()

@end

@implementation LOLRestaurant

- (instancetype)initWithName:(NSString *)name
{
    self = [super init];
    if (self) {
        _name = name;
        _meals = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)addMeal:(LOLMeal *)meal {
    [[self meals] addObject:meal];

//    [self.meals addObject:meal];

    NSNotificationCenter *notCenter = [NSNotificationCenter defaultCenter];
    [notCenter postNotificationName:@"modelUpdated" object:self];
}

- (NSMutableArray<LOLMeal *> *)meals {
    if (!_meals) {
        _meals = [[NSMutableArray alloc] init];
    }
    return _meals;
}

@end

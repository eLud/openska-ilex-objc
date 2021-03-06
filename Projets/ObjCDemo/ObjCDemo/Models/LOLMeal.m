//
//  LOLMeal.m
//  ObjCDemo
//
//  Created by Ludovic Ollagnier on 14/06/2021.
//

#import "LOLMeal.h"

@implementation LOLMeal

- (instancetype)initWithName:(NSString*)name
                       pitch:(nullable NSString*)pitch
          preciseDescription:(NSString *)desc
                      veggie:(BOOL)veggie
                    andPrice:(double)price {

    self = [super init];
    if (self) {
        _name = name;
        _pitch = pitch;
        _preciseDescription = desc;
        _veggie = veggie;
        _price = price;
    }
    return self;
}

- (instancetype)initWithName:(NSString*)name
                    andPrice:(double)price {

    self = [super init];
    if (self) {
        _name = name;
        _price = price;
    }
    return self;
}

@end

//
//  LOLRestaurant.h
//  ObjCDemo
//
//  Created by Ludovic Ollagnier on 14/06/2021.
//

#import <Foundation/Foundation.h>
#import "LOLMeal.h"

NS_ASSUME_NONNULL_BEGIN

@interface LOLRestaurant : NSObject

@property (copy, nonatomic) NSString *name;
@property (strong, nonatomic) NSMutableArray<LOLMeal *> *meals;

- (instancetype)initWithName:(NSString *)name;
- (instancetype)init NS_UNAVAILABLE;

- (void)addMeal:(LOLMeal*)meal;

@end

NS_ASSUME_NONNULL_END

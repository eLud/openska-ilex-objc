//
//  LOLMeal.h
//  ObjCDemo
//
//  Created by Ludovic Ollagnier on 14/06/2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LOLMeal : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic, nullable) NSString *pitch;
@property (nonatomic) double price;

- (instancetype)initWithName:(NSString*)name pitch:(nullable NSString*)pitch andPrice:(double)price;
- (instancetype)initWithName:(NSString*)name andPrice:(double)price;
- (instancetype)init NS_UNAVAILABLE;

@end

NS_ASSUME_NONNULL_END

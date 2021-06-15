//
//  LOLMeal.h
//  ObjCDemo
//
//  Created by Ludovic Ollagnier on 14/06/2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LOLMeal : NSObject

@property (copy, nonatomic) NSString *name;
@property (copy, nonatomic, nullable) NSString *pitch;
@property (copy, nonatomic, nullable) NSString *preciseDescription;
@property (nonatomic, getter=isVeggie) BOOL veggie;
@property (nonatomic) double price;

- (instancetype)initWithName:(NSString*)name
                       pitch:(nullable NSString*)pitch
          preciseDescription:(NSString *)desc
                      veggie:(BOOL)veggie
                    andPrice:(double)price;

- (instancetype)initWithName:(NSString*)name andPrice:(double)price;
- (instancetype)init NS_UNAVAILABLE;

@end

NS_ASSUME_NONNULL_END

//
//  Human.h
//  Memory management
//
//  Created by Ludovic Ollagnier on 17/06/2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Human : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic, nullable) Human *child;
@property (strong, nonatomic, nullable) Human *father;

- (instancetype)initWithName:(NSString*)name;

@end

NS_ASSUME_NONNULL_END

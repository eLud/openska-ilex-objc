//
//  Human.m
//  Memory management
//
//  Created by Ludovic Ollagnier on 17/06/2021.
//

#import "Human.h"

@implementation Human

- (instancetype)initWithName:(NSString*)name
{
    self = [super init];
    if (self) {
        _name = name;
    }
    return self;
}

//- (void)dealloc
//{
//    NSLog(@"Deallocating %@", _name);
//}

@end

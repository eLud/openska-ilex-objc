//
//  ViewController.h
//  ObjCDemo
//
//  Created by Ludovic Ollagnier on 14/06/2021.
//

//#import <UIKit/UIKit.h>
@import UIKit;
@class LOLRestaurant;

//Interface "publique"
//Ce qu'on montre aux autres
@interface ViewController : UIViewController

@property (strong, nonatomic) LOLRestaurant *restaurant;

@end

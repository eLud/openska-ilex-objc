//
//  ViewController.m
//  Memory management
//
//  Created by Ludovic Ollagnier on 17/06/2021.
//

#import "ViewController.h"
#import "Human.h"

@interface ViewController ()

- (IBAction)createHuman:(id)sender;
- (IBAction)createFamily:(id)sender;
- (IBAction)clearCurrent:(id)sender;

@property (strong, nonatomic) Human *currentHuman;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)createFamily:(id)sender {
    for (int i = 0; i < 100000; i++) {
        Human *me = [[Human alloc]initWithName:@"Ludovic"];
        self.currentHuman = me;

        Human *myChild = [[Human alloc] initWithName:@""];
        myChild.father = me;
        me.child = myChild;
    }
}

- (IBAction)createHuman:(id)sender {

    for (int i = 0; i < 100000; i++) {
        Human *me = [[Human alloc]initWithName:@"Ludovic"];
        self.currentHuman = me;
    }
}
- (IBAction)clearCurrent:(id)sender {
    self.currentHuman = nil;
}
@end

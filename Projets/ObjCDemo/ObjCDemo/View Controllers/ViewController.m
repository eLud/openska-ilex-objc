//
//  ViewController.m
//  ObjCDemo
//
//  Created by Ludovic Ollagnier on 14/06/2021.
//

#import "ViewController.h"
#import "LOLMeal.h"
#import "LOLUIComponents.h"
#import "LOLRestaurant.h"

//Interface "privée"
//Inconnue des autres
@interface ViewController ()

@property (strong, nonatomic) LOLRestaurant *restaurant;

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *pitchTextField;
@property (weak, nonatomic) IBOutlet UITextView *descriptionTextView;
@property (weak, nonatomic) IBOutlet UISwitch *isVeggieSwitch;
@property (weak, nonatomic) IBOutlet UITextField *priceTextField;
@property (weak, nonatomic) IBOutlet UIButton *saveButton;

@end

//Implémentation
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.


    UIButton *myButtonFromCode = [LOLUIComponents styledButtonWithTint:UIColor.redColor andBackground:UIColor.blueColor];
    [self.view addSubview:myButtonFromCode];

    [myButtonFromCode setTranslatesAutoresizingMaskIntoConstraints:NO];

    NSLayoutConstraint *top = [[myButtonFromCode centerYAnchor] constraintEqualToAnchor:[self.saveButton centerYAnchor]];
    NSLayoutConstraint *leading = [[myButtonFromCode leadingAnchor] constraintEqualToSystemSpacingAfterAnchor: [self.view leadingAnchor] multiplier:1];
    [top setActive:YES];
    [leading setActive:YES];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];

}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];

}

- (IBAction)textFieldDidCHange:(UITextField *)sender {
    NSLog(@"%@", sender.text);

    if ([sender.text containsString:@"a"]) {
        [sender setBackgroundColor:UIColor.redColor];
        [self.saveButton setEnabled:NO];
    } else {
        [sender setBackgroundColor:UIColor.systemBackgroundColor];
        [self.saveButton setEnabled:YES];

    }
}

- (IBAction)saveMeal:(UIButton *)sender {

    NSString *name = self.nameTextField.text;
    NSString *pitch = self.pitchTextField.text;
    NSString *desc = self.descriptionTextView.text;

    BOOL isVeggie = self.isVeggieSwitch.isOn;
    NSString *price = self.priceTextField.text;

    double priceDbl = price.doubleValue;

    LOLMeal *newMeal = [[LOLMeal alloc] initWithName:name pitch:pitch preciseDescription:desc veggie:isVeggie andPrice:priceDbl];

    [self.restaurant addMeal:newMeal];
    NSLog(@"%@", self.restaurant.meals);
}

#pragma mark - Lazy instaniation

- (LOLRestaurant *)restaurant {
    if (!_restaurant) {
        _restaurant = [[LOLRestaurant alloc] initWithName:@"Resto name"];
    }
    return _restaurant;
}
@end

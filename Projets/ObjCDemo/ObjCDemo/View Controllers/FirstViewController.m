//
//  FirstViewController.m
//  ObjCDemo
//
//  Created by Ludovic Ollagnier on 16/06/2021.
//

#import "FirstViewController.h"
#import "ViewController.h"
#import "MaCustomTableViewCell.h"
#import "LOLRestaurant.h"
#import "MealDetailsViewController.h"

@interface FirstViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) LOLRestaurant *restaurant;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.


    LOLMeal *meal1 = [[LOLMeal alloc] initWithName:@"Pizza" pitch:@"Un morceau d'Italie" preciseDescription:@"" veggie:YES andPrice:9.5];
    LOLMeal *meal2 = [[LOLMeal alloc] initWithName:@"Steak frites" pitch:@"Un morceau de viande" preciseDescription:@"" veggie:NO andPrice:12.5];

    [self.restaurant addMeal:meal1];
    [self.restaurant addMeal:meal2];

    // Penser à définir le datasource par le code ou le storyboard
    self.tableView.dataSource = self;

    NSNotificationCenter *notCenter = [NSNotificationCenter defaultCenter];
//    [notCenter addObserverForName:@"modelUpdated" object:nil queue:NSOperationQueue.mainQueue usingBlock:^(NSNotification * _Nonnull note) {
//        [self.tableView reloadData];
//    }];

    [notCenter addObserver:self selector:@selector(dataUpdated:) name:@"modelUpdated" object:nil];
//    [notCenter addObserver:self.tableView selector:@selector(reloadData:) name:@"modelUpdated" object:nil];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];

//    [self performSegueWithIdentifier:@"manual" sender:nil];
}

- (void)viewDidDisappear:(BOOL)animated {

}

- (void)dataUpdated:(NSNotification*)note {

    LOLMeal *addedMeal = note.userInfo[@"newMeal"];
    NSLog(@"%@", addedMeal.name);

    [self.tableView reloadData];
}

- (IBAction)presentFormFromCode:(UIButton *)sender {

    ViewController *vc = [[self storyboard] instantiateViewControllerWithIdentifier:@"ViewController"];
//    vc.message = @"From code";

    [self presentViewController:vc animated:YES completion:nil];

//    [self showViewController:vc sender:nil];
//    [self.navigationController pushViewController:vc animated:YES];
}

#pragma mark - UITableVIewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.restaurant.meals.count;
//    return [[[self restaurant] meals] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    MaCustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"mealCell" forIndexPath:indexPath];

    LOLMeal *currentMeal = self.restaurant.meals[indexPath.row];
    NSString *price = [NSString stringWithFormat:@"%.2f", currentMeal.price];

    UIImage *image = nil;
    if (currentMeal.isVeggie) {
        image = [UIImage systemImageNamed:@"leaf"];
    }

    [cell configureWithName:currentMeal.name pitch:currentMeal.pitch price:price andImage:image];

    return cell;
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.

    if ([segue.identifier isEqualToString:@"showForm"]) {
        
        ViewController *destination = segue.destinationViewController;
        destination.restaurant = self.restaurant;

    } else if ([segue.identifier isEqualToString:@"showDetails"]) {
        if (![sender isKindOfClass:[UITableViewCell class]]) {
            return;
        }

        UITableViewCell *cell = sender;
        NSIndexPath *ip = [self.tableView indexPathForCell:cell];
        LOLMeal *currentMeal = self.restaurant.meals[ip.row];

//        UITableViewCell *cell2 = [self.tableView indexPathForSelectedRow];

        MealDetailsViewController *destination = segue.destinationViewController;
        destination.meal = currentMeal;

        // Useless if using a UITableViewController
        [self.tableView deselectRowAtIndexPath:ip animated:NO];
    }

}

#pragma mark - Lazy instaniation

- (LOLRestaurant *)restaurant {
    if (!_restaurant) {
        _restaurant = [[LOLRestaurant alloc] initWithName:@"Resto name"];
    }
    return _restaurant;
}

@end

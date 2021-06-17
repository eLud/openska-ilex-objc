//
//  FirstViewController.m
//  ObjCDemo
//
//  Created by Ludovic Ollagnier on 16/06/2021.
//

#import "FirstViewController.h"
#import "ViewController.h"
#import "MaCustomTableViewCell.h"

@interface FirstViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    // Penser à définir le datasource par le code ou le storyboard
    self.tableView.dataSource = self;
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];

//    [self performSegueWithIdentifier:@"manual" sender:nil];
}

- (IBAction)presentFormFromCode:(UIButton *)sender {

    ViewController *vc = [[self storyboard] instantiateViewControllerWithIdentifier:@"ViewController"];
    vc.message = @"From code";

    [self presentViewController:vc animated:YES completion:nil];

//    [self showViewController:vc sender:nil];
//    [self.navigationController pushViewController:vc animated:YES];
}

#pragma mark - UITableVIewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1000;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    MaCustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"mealCell" forIndexPath:indexPath];
    cell.nameLabel.text = @"Hello";

    return cell;
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.

    if ([segue.identifier isEqualToString:@"showForm"]) {
        ViewController *destination = segue.destinationViewController;
        destination.message = @"From storyboard";
    }

}


@end

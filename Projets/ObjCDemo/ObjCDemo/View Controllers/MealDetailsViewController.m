//
//  MealDetailsViewController.m
//  ObjCDemo
//
//  Created by Ludovic Ollagnier on 17/06/2021.
//

#import "MealDetailsViewController.h"
#import "LOLMeal.h"

//@import AFNetworking;
#import <AFNetworking.h>

@interface MealDetailsViewController () <NSURLSessionDelegate, NSURLSessionDataDelegate>

@property (strong, nonatomic) NSURLSession *session;
@property (weak, nonatomic) IBOutlet UIImageView *imageview;

@end

@implementation MealDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSLog(@"%@", self.meal);
    self.title = self.meal.name;

    self.title = NSLocalizedString(@"MEAL_DETAILS_VIEW_TITLE", @"");
}

- (IBAction)request:(UIButton *)sender {

//    NSURLSession *sharedSession = [NSURLSession sharedSession];
    NSURLSessionConfiguration *config = [NSURLSessionConfiguration defaultSessionConfiguration];
    [config setHTTPAdditionalHeaders:@{@"HEADERCUSTOM":@"AZERTYUIOP"}];
    [config setAllowsCellularAccess:NO];

    NSURLSession *customSession = [NSURLSession sessionWithConfiguration:config
                                                                delegate:self
                                                           delegateQueue:[[NSOperationQueue alloc]init]];
    self.session = customSession;

    NSMutableURLRequest *req = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"https://docs-assets.developer.apple.com/published/70c2e21be4/e03269c1-9623-4da6-93f2-772077f7867c.png"]];
    [req setHTTPMethod:@"GET"];

    NSURLSessionTask *myTask = [customSession dataTaskWithRequest:req
                                                completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error) {
            return;
        }

        if (!data) {
            return;;
        }

        UIImage *img = [UIImage imageWithData:data];
        NSLog(@"%@", img);

        //Go back to the main thread / queue to update UI!
        dispatch_async(dispatch_get_main_queue(), ^{
            self.imageview.image = img;
        });

        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{

        });
    }];

    [myTask resume];

    NSURLSessionTask *myTask2 = [customSession dataTaskWithRequest:req];
    [myTask2 resume];
}

#pragma mark - URLSessionDelegate

- (void)URLSession:(NSURLSession *)session didReceiveChallenge:(NSURLAuthenticationChallenge *)challenge completionHandler:(void (^)(NSURLSessionAuthChallengeDisposition, NSURLCredential * _Nullable))completionHandler {

}

- (void)URLSession:(NSURLSession *)session task:(NSURLSessionTask *)task didCompleteWithError:(NSError *)error {
    NSLog(@"%@", task);
}

-(void)URLSession:(NSURLSession *)session dataTask:(NSURLSessionDataTask *)dataTask didReceiveData:(NSData *)data {
    NSLog(@"%@", data);
    UIImage *img = [UIImage imageWithData:data];
    NSLog(@"%@", img);
}

@end

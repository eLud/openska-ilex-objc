//
//  MaCustomTableViewCell.h
//  ObjCDemo
//
//  Created by Ludovic Ollagnier on 17/06/2021.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MaCustomTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *pitchLabel;
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;
@property (weak, nonatomic) IBOutlet UIImageView *image;

- (void)configureWithName:(NSString *)name pitch:(NSString*)pitch price:(NSString*)price andImage:(UIImage*)image;

@end

NS_ASSUME_NONNULL_END

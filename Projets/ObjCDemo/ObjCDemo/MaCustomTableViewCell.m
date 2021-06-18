//
//  MaCustomTableViewCell.m
//  ObjCDemo
//
//  Created by Ludovic Ollagnier on 17/06/2021.
//

#import "MaCustomTableViewCell.h"

@implementation MaCustomTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code

    self.backgroundColor = [UIColor colorNamed:@"ilex-orange"];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)configureWithName:(NSString *)name pitch:(NSString*)pitch price:(NSString*)price andImage:(UIImage*)image {
    self.nameLabel.text = name;
    self.pitchLabel.text = pitch;
    self.priceLabel.text = price;
    self.image.image = image;

    if (self.image.image) {
        [self.image setHidden:NO];;
    } else {
        [self.image setHidden:YES];;
    }
}

- (void)prepareForReuse {
    [super prepareForReuse];

    self.backgroundColor = UIColor.systemBackgroundColor;
}

@end

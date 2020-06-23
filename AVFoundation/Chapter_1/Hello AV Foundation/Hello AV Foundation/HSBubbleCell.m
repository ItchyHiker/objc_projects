//
//  HSBubbleCell.m
//  Hello AV Foundation
//
//  Created by yuhua.cheng on 2020/6/23.
//  Copyright © 2020 vincent. All rights reserved.
//

#import "HSBubbleCell.h"

@implementation HSBubbleCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        _background = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bubble_left"]];
        _messageLabel = [[UILabel alloc] init];
        [self.contentView addSubview:_background];
        [self.contentView addSubview:_messageLabel];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    _background.frame = self.contentView.bounds;
    _messageLabel.frame = self.contentView.bounds;
    
}

@end

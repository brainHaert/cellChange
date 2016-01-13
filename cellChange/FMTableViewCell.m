//
//  FMTableViewCell.m
//  cellChange
//
//  Created by admin on 15/12/19.
//  Copyright (c) 2015年 zilong. All rights reserved.
//

#import "FMTableViewCell.h"

@implementation FMTableViewCell
{
    UILabel *_label;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        _label = [[UILabel alloc]initWithFrame:CGRectMake(0, 10, [UIScreen mainScreen].bounds.size.width, 30)];
        
        _label.textColor = [UIColor redColor];
        
        _label.font = [UIFont systemFontOfSize:12];
        
        _label.textAlignment = NSTextAlignmentCenter;
        
        [self addSubview:_label];
        
    }
    return self;
}
-(void)labelText:(NSIndexPath *)indexPath{
    _label.text = [NSString stringWithFormat:@"%@",indexPath];
}

-(void)bigLabelText{
    _label.text = @"我已经变大了，哈哈";
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

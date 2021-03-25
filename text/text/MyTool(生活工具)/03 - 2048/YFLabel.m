//
//  YFLabel.m
//  2048
//
//  Created by apple on 15-6-21.
//  Copyright (c) 2015年 杨帆_company. All rights reserved.
//

#import "YFLabel.h"
#import "UIView+Extension.h"


@implementation YFLabel

- (instancetype)init{
    if (self = [super init]) {
        self.canAdd = YES;
    }
    return self;
}

- (void)moveHereWithRow:(int)row line:(int)line{
    
    self.isLabelMoving = YES;
    [UIView animateWithDuration:0.1 animations:^{
        
        self.y = YFPadding_chess + (row - 1) * (YFPadding_chess + YFChessWH);
        self.x = YFPadding_chess + (line - 1) * (YFPadding_chess + YFChessWH);
    }completion:^(BOOL finished) {
        self.isLabelMoving = NO;
    }];
    
    self.row = row;
    self.line = line;
}

// getter方法跟setter不能一起写
-(void)setNumber:(int)number{
    _number = number;
    
        // 改变label的数字
    switch (number) {
        case 2:
            self.text = @"菜鸟";
            break;
        case 4:
            self.text = @"黑铁";
            break;
        case 8:
            self.text = @"青铜";
            break;
        case 16:
            self.text = @"白银";
            break;
        case 32:
            self.text = @"黄金";
            break;
        case 64:
            self.text = @"铂金";
            break;
        case 128:
            self.text = @"钻石";
            break;
        case 256:
            self.text = @"大师";
            break;
        case 512:
            self.text = @"宗师";
            break;
        case 1024:
            self.text = @"王者";
            break;
        case 2048:
            self.text = @"职业";
            break;
            
        default:
            self.backgroundColor = [UIColor blackColor];
            
            break;
    }
    
        self.font = [UIFont boldSystemFontOfSize:30];
        self.textAlignment = NSTextAlignmentCenter;
        
        // 改变label的颜色
        
        //    NSLog(@"setter ---nuber -- %zd", number);
        switch (number) {
            case 2:
                self.backgroundColor = YFColor_chess_2;
                break;
            case 4:
                self.backgroundColor = YFColor_chess_4;
                break;
            case 8:
                self.backgroundColor = YFColor_chess_8;
                break;
            case 16:
                self.backgroundColor = YFColor_chess_16;
                break;
            case 32:
                self.backgroundColor = YFColor_chess_32;
                break;
            case 64:
                self.backgroundColor = YFColor_chess_64;
                break;
            case 128:
                self.backgroundColor = YFColor_chess_128;
                break;
            case 256:
                self.backgroundColor = YFColor_chess_256;
                break;
            case 512:
                self.backgroundColor = YFColor_chess_512;
                break;
            case 1024:
                self.backgroundColor = YFColor_chess_1024;
                break;
            case 2048:
                self.backgroundColor = YFColor_chess_2048;
                break;
                
            default:
                self.backgroundColor = [UIColor blackColor];
                
                break;
        }
    

}



@end

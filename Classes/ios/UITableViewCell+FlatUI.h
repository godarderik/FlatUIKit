//
//  UITableViewCell+FlatUI.h
//  FlatUIKitExample
//
//  Created by Maciej Swic on 2013-05-31.
//
//

#import <UIKit/UIKit.h>

@interface UITableViewCell (FlatUI)

@property (nonatomic) CGFloat cornerRadius;
@property (nonatomic) CGFloat separatorHeight;
@property (nonatomic) UIColor *color;
@property (nonatomic) UIColor *selectedColor;


- (void)setColor:(UIColor *)color;
- (void)setSelectedColor(UIColor *)selectedColor;
- (void)setCornerRadius:(CGFloat)cornerRadius;
- (void)setSeparatorHeight:(CGFloat)separatorHeight;

@end

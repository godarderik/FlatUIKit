//
//  UITableViewCell+FlatUI.m
//  FlatUIKitExample
//
//  Created by Maciej Swic on 2013-05-31.
//
//

#import "UITableViewCell+FlatUI.h"
#import "FUICellBackgroundView.h"
#import <objc/runtime.h>

@implementation UITableViewCell (FlatUI)

@dynamic cornerRadius, separatorHeight, color, selectedColor;

-(void)setColor:(UIColor *)color {
    FUICellBackgroundView* backgroundView = [FUICellBackgroundView new];
    backgroundView.backgroundColor = color;
    self.backgroundView = backgroundView;
    
    self.textLabel.backgroundColor = [UIColor clearColor];
    if ([self respondsToSelector:@selector(detailTextLabel)])
        self.detailTextLabel.backgroundColor = [UIColor clearColor];
    
    self.textLabel.highlightedTextColor = color;
    
    if ([self respondsToSelector:@selector(detailTextLabel)]) {
        
        self.detailTextLabel.highlightedTextColor = color;
    }
    
}

-(void)setSelectedColor:(UIColor *)selectedColor {
    FUICellBackgroundView* selectedBackgroundView = [FUICellBackgroundView new];
    selectedBackgroundView.backgroundColor = selectedColor;
    self.selectedBackgroundView = selectedBackgroundView;
    
    self.textLabel.textColor = selectedColor;
    
    
    if ([self respondsToSelector:@selector(detailTextLabel)]) {
        self.detailTextLabel.textColor = selectedColor;
    }

}

- (void)setCornerRadius:(CGFloat)cornerRadius {
    [(FUICellBackgroundView*)self.backgroundView setCornerRadius:cornerRadius];
    [(FUICellBackgroundView*)self.selectedBackgroundView setCornerRadius:cornerRadius];
}

- (void)setSeparatorHeight:(CGFloat)separatorHeight {
    [(FUICellBackgroundView*)self.backgroundView setSeparatorHeight:separatorHeight];
    [(FUICellBackgroundView*)self.selectedBackgroundView setSeparatorHeight:separatorHeight];
}

@end

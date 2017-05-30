//
//  pageScrollView.m
//  iOSApp
//

#import "PageScrollView.h"

@interface PageScrollView ()

@property (nonatomic, strong) UIView *containerView;
@property (nonatomic, strong) UIView *pageView;

@end

@implementation PageScrollView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        NSLog(@"hello world");
    }
    return self;
}


@end

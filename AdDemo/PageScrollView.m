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
        [self addSubview:self.containerView];
        [self.containerView addSubview:self.pageView];
    }
    return self;
}

#pragma mark - Setter Getter

- (void)setNumberOfPages:(NSInteger)numberOfPages {
    _numberOfPages = numberOfPages;
    self.pageView.bdbs_width = self.containerView.bdbs_width / self.numberOfPages;
}

- (void)setCurrentPage:(NSInteger)currentPage {
    _currentPage = currentPage;
    [UIView animateWithDuration:0.25 animations:^{
        self.pageView.bdbs_x = currentPage * self.pageView.bdbs_width;
    }];
    
}

#pragma mark - Lazy Load

- (UIView *)containerView {
    if (!_containerView) {
        CGRect frame = CGRectMake(0, 0, self.bdbs_width, self.bdbs_height);
        _containerView = [[UIView alloc] initWithFrame:frame];
        _containerView.backgroundColor = [UIColor colorWithWhite:0 alpha:0.1];
    }
    return _containerView;
}

- (UIView *)pageView {
    if (!_pageView) {
        CGRect frame = CGRectMake(0.0f, 0.0f, 0.0f, self.containerView.bdbs_height);
        _pageView = [[UIView alloc] initWithFrame:frame];
        _pageView.backgroundColor = ColorForTextGray;
    }
    return _pageView;
}

@end

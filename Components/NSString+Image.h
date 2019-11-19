#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/**
 The @c Image category on @c NSString 
 */
@interface NSString (Image)

- (nullable UIImage *)imageWithAttributes:(NSDictionary<NSAttributedStringKey, id> *)attributes size:(CGSize)size;
@end

NS_ASSUME_NONNULL_END

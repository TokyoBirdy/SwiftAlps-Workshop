#import "NSString+Image.h"

@implementation NSString (Image)

- (nullable UIImage *)imageWithAttributes:(NSDictionary<NSAttributedStringKey, id> *)attributes size:(CGSize)size
{
    CGSize aSize = [self sizeWithAttributes:attributes];
    UIGraphicsImageRenderer *renderer = [[UIGraphicsImageRenderer alloc] initWithSize:aSize];
    return [renderer imageWithActions:^(UIGraphicsImageRendererContext * _Nonnull rendererContext) {
        [self drawInRect:CGRectMake(0, 0, size.width, size.height) withAttributes:attributes];
    }];
}

@end

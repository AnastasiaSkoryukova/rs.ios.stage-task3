#import <Foundation/Foundation.h>



@interface NSDate (CustomDate)

+ (NSDate *)dateFrom:(NSString *)string;
+ (NSDate *)dateFrom:(NSInteger)day month:(NSInteger)month year:(NSInteger)year;

@end

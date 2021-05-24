#import "DateHelper.h"
#import "NSDate+CustomDate.h"

@implementation DateHelper

#pragma mark - First

-(NSString *)monthNameBy:(NSUInteger)monthNumber {
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    
    NSArray *monthArray = [dateFormatter monthSymbols];
    
    NSString *testString = @"";
    
    if (monthNumber > 0 && monthNumber < [monthArray count]) {
    return testString = [monthArray objectAtIndex:monthNumber - 1];
    
    }
    return nil;
}

#pragma mark - Second

- (long)dayFromDate:(NSString *)date {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZ"];
    NSDate *dateFromString = [dateFormatter dateFromString:date];
    NSDateComponents *components = [[NSCalendar currentCalendar] components:NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear fromDate:dateFromString];
    long day = components.day;
    
    
    return day;

}

#pragma mark - Third

- (NSString *)getDayName:(NSDate*) date {
        
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    NSLocale *locale = [[NSLocale alloc] initWithLocaleIdentifier:@"ru_RU"];
    [dateFormatter setLocale:locale];
    [dateFormatter setDateFormat:@"E"];
    NSString *dayName = [dateFormatter stringFromDate:date];
 
    return dayName;
}

#pragma mark - Fourth

- (BOOL)isDateInThisWeek:(NSDate *)date {
    
    NSDate *now = [NSDate now];
    
    BOOL atSameWeek = [[NSCalendar currentCalendar] isDate:date equalToDate:now toUnitGranularity:NSCalendarUnitWeekOfYear];
    
    
    return atSameWeek;
}

@end





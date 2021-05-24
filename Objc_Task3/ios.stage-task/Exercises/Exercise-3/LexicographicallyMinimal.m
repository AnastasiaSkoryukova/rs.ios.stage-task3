#import "LexicographicallyMinimal.h"

@interface LexicographicallyMinimal()

@property (nonatomic, strong) NSMutableString *resultString;

@end

@implementation LexicographicallyMinimal

-(NSString *)findLexicographicallyMinimalForString1:(NSString *)string1 andString2:(NSString *)string2 {
    
    NSMutableString *string1Mutable = [NSMutableString stringWithString:string1];
    NSMutableString *string2Mutable = [NSMutableString stringWithString:string2];
    
   
    
    NSMutableString *answerMutable = [[NSMutableString alloc] init];
    NSString *answer = [[NSString alloc] init];
    
    while ([string1Mutable length] != 0 && [string2Mutable length] != 0) {
        
        const char *charString1 = [string1Mutable UTF8String];
        const char *charString2 = [string2Mutable UTF8String];
        
        
        NSRange firstCharacterRange = NSMakeRange(0, 1);
        
        if (charString1[0] <= charString2[0]) {
            [answerMutable appendFormat:@"%c",charString1[0]];
            [string1Mutable deleteCharactersInRange:firstCharacterRange];
            
        } else if (charString1[0] > charString2[0]) {
            [answerMutable appendFormat:@"%c",charString2[0]];
            [string2Mutable deleteCharactersInRange:firstCharacterRange];
            
        }
        
        
        
        
        
        }
        
    if ([string1Mutable length] == 0) {
        
            [answerMutable appendString:string2Mutable];
        
    }
    else if ([string2Mutable length] == 0) {
            
                [answerMutable appendString:string1Mutable];
               
            }
        
    
    answer = [answerMutable copy];
        
        return answer;
    }

    
    @end

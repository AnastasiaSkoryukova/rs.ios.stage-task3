#import "PlayersSeparator.h"

@implementation PlayersSeparator

- (NSInteger)dividePlayersIntoTeams:(NSArray<NSNumber *>*)ratingArray {
    
    NSInteger numberOfTeams = 0;
    
    
        for (int i = 0; i < [ratingArray count]; i++) {
            
            for (int j = 1; j < [ratingArray count]; j++) {
                for (int k = 2; k < [ratingArray count]; k++) {
                    if (i<j && j<k) {
                        if (([ratingArray[i] intValue] < [ratingArray[j] intValue] && [ratingArray[k] intValue] > [ratingArray[j]intValue]) || ([ratingArray[i] intValue] > [ratingArray[j] intValue] && [ratingArray[k] intValue] < [ratingArray[j]intValue])) {
                            numberOfTeams++;
                        }
                    }
                }
            }
        
    }
    return numberOfTeams;
}

@end

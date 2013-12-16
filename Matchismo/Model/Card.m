//
//  Card.m
//  Matchismo
//
//  Created by ray on 13-12-11.
//  Copyright (c) 2013年 CS193p. All rights reserved.
//

#import "Card.h"


@interface Card()

@end

@implementation Card

- (int)match:(NSArray *)otherCards
{
    int score = 0;
    
    for (Card *card in otherCards) {
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    
    return score;
}

@end

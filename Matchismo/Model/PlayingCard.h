//
//  PlayingCard.h
//  Matchismo
//
//  Created by ray on 13-12-11.
//  Copyright (c) 2013年 CS193p. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (nonatomic, strong) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end

//
//  Deck.m
//  Matchismo
//
//  Created by ray on 13-12-11.
//  Copyright (c) 2013年 CS193p. All rights reserved.
//

#import "Deck.h"

@interface Deck()
@property (nonatomic, strong) NSMutableArray *cards;
@end

@implementation Deck

- (NSMutableArray *)cards
{
    if (!_cards) {
        _cards = [[NSMutableArray alloc] init];
    }
    return _cards;
}

- (void)addCard:(PlayingCard *)PlayingCard atTop:(BOOL)atTop
{
    if (atTop) {
        [self.cards insertObject:PlayingCard atIndex:0];
    } else {
        [self.cards addObject:PlayingCard];
    }
}

- (void)addCard:(PlayingCard *)PlayingCard
{
    [self addCard:PlayingCard atTop:NO];
}

- (PlayingCard *)drawRandomCard
{
    PlayingCard *randomCard = nil;
    
    if ([self.cards count]) {
        unsigned index = arc4random() % [self.cards count];
        randomCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];
    }

    return randomCard;
}


@end

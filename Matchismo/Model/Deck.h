//
//  Deck.h
//  Matchismo
//
//  Created by ray on 13-12-11.
//  Copyright (c) 2013年 CS193p. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PlayingCard.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card;

- (PlayingCard *)drawRandomCard;


@end

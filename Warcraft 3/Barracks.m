//
//  Barracks.m
//  
//
//  Created by Daniel Mathews on 2015-07-31.
//
//

#import "Barracks.h"

@implementation Barracks

-(instancetype)init {
    self = [super init];
    if (self) {
        self.gold = 1000;
        self.food = 80;
    }
    return self;
}

-(BOOL)canTrainFootman {
    if (self.gold >= 135 && self.food >= 2) {
        return YES;
    } else {
        return NO;
    }
}

-(Footman *)trainFootman {
    BOOL canTrainFootman = [self canTrainFootman];
    if (canTrainFootman) {
        self.gold -= 135;
        self.food -= 2;
        Footman *newFootman = [[Footman alloc]init];
        return newFootman;
    } else {
        return nil;
    }
}

- (BOOL)canTrainPeasant {
    if (self.gold >= 90 && self.food >= 5) {
        return YES;
    } else {
        return NO;
    }
}

- (Peasant*)trainPeasant {
    BOOL canTrainPeasant = [self canTrainPeasant];
    if (canTrainPeasant) {
        self.gold -= 90;
        self.food -= 5;
        Peasant *newPeasant = [Peasant new];
        return newPeasant;
    } else {
        return nil;
    }
}


@end

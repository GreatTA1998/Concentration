//
//  Card.swift
//  Concentration
//
//  Created by Elton Lin on 2018/2/20.
//  Copyright © 2018年 MIT. All rights reserved.
//

import Foundation

struct Card: Hashable {
    var hashValue: Int {
        return identifier
    }
    
    static func ==(lhs: Card, rhs: Card) -> Bool {
        return lhs.identifier == rhs.identifier
    }
    
    var isFaceUp = false
    var isMatched = false
    private var identifier: Int
    
    // give identifers to newly created cards
    private static var identifierFactory = 0
    
    private static func getUniqueIdentifier() -> Int { // card type for the identifier Int
        Card.identifierFactory += 1
        return Card.identifierFactory
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
}

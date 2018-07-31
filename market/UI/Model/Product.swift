//
//  Product.swift
//  market
//
//  Created by Ana Rebollo Pin on 30/7/18.
//  Copyright © 2018 Ana Rebollo Pin. All rights reserved.
//

import Foundation

class Product {
    
    var name: String
    var isAnOffer: Bool
    
    init(name:String) {
        self.name = name
        self.isAnOffer = false
    }
}

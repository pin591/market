//
//  Supermarket.swift
//  market
//
//  Created by Ana Rebollo Pin on 30/7/18.
//  Copyright © 2018 Ana Rebollo Pin. All rights reserved.
//

import Foundation


class Supermarket {
    
    var products: [Product]
    
    init() {
        
        let cereals = Product(name: "cereals")
        let coffee = Product(name: "coffee")
        let beans = Product(name: "beans")
        let Kiwi = Product(name: "kiwi")
        let perfum = Product(name: "perfum")
        let cosmetics = Product(name: "cosmetics")
        
        self.products = [cereals, coffee , beans, Kiwi, perfum, cosmetics]
    }
    
    func numberOfProductInSupermarket() -> Int {
       return products.count
    }
    
    func productNameByPosition(indexPath: IndexPath) -> Product {
        let product = products[indexPath.row]
        return product
    }
}



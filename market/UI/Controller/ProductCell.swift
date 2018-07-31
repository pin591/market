//
//  ProductCell.swift
//  supermarket
//
//  Created by Ana Rebollo Pin on 30/7/18.
//  Copyright © 2018 Ana Rebollo Pin. All rights reserved.
//

import Foundation

import UIKit

class ProductCell: UICollectionViewCell {
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    
    func displayContent(plant: Product) {
        productImage.image = UIImage(named:plant.name)
        productTitle.text = plant.name
       // plantNameLabel.alpha = 0
    }
}

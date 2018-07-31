//
//  ProductDetailsViewController.swift
//  market
//
//  Created by Ana Rebollo Pin on 30/7/18.
//  Copyright © 2018 Ana Rebollo Pin. All rights reserved.
//

import UIKit

class ProductDetailsViewController: UIViewController {
    
    @IBOutlet weak var detailImage: UIImageView!
    @IBOutlet weak var detailTitle: UILabel!
    @IBOutlet weak var detaildescription: UITextView!
    
    var product: Product!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailImage.image = UIImage(named:product.name)
        detailTitle.text = product.name
        detaildescription.text = "Hola que tal estas por ahi"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

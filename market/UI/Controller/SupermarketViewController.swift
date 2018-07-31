//
//  SupermarketViewController.swift
//  market
//
//  Created by Ana Rebollo Pin on 30/7/18.
//  Copyright © 2018 Ana Rebollo Pin. All rights reserved.
//

import UIKit

class SupermarketViewController: UIViewController, UICollectionViewDataSource,
                               UICollectionViewDelegateFlowLayout {
    
    let reuseIdentifier = "productCell"
    var actualCell: IndexPath!
    let supermarket = Supermarket();
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return (section == 0) ? supermarket.numberOfProductInSupermarket() : supermarket.numberOfProductInSupermarket()
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell( withReuseIdentifier: reuseIdentifier,
                                        for: indexPath) as! ProductCell
        let plant = supermarket.productNameByPosition(indexPath: indexPath)
        cell.displayContent(plant: plant)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        actualCell = indexPath
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
            let yourWidth = collectionView.bounds.width/3.0
            let yourHeight = yourWidth
            return CGSize(width: yourWidth, height: yourHeight)
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.zero
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is ProductDetailsViewController {
            let destination = segue.destination as! ProductDetailsViewController
            destination.product = supermarket.productNameByPosition(indexPath: actualCell)
        }
    }
}


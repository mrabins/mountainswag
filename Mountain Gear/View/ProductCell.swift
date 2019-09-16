//
//  ProductCell.swift
//  Mountain Gear
//
//  Created by Mark Rabins on 9/13/19.
//  Copyright © 2019 Mark Rabins. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    
    func updateViews(product: Product) {
        productImage.image = UIImage(named: product.imageName)
        productTitle.text = product.title
        productPrice.text = String("$\(product.price)")
    }
    
}

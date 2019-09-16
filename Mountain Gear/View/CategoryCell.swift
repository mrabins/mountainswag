//
//  CategoryCell.swift
//  Mountain Gear
//
//  Created by Mark Rabins on 9/13/19.
//  Copyright © 2019 Mark Rabins. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryTitle: UILabel!
    @IBOutlet weak var categoryImage: UIImageView!
    
    func updateView(category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }
}

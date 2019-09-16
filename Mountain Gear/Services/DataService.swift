//
//  DataService.swift
//  Mountain Gear
//
//  Created by Mark Rabins on 9/13/19.
//  Copyright © 2019 Mark Rabins. All rights reserved.
//

import Foundation



class DataService {
    
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let hats = [
        Product(title: "Slopes Logo Graphic Beanie", price: 24.00, imageName: "hat01.png"),
        Product(title: "Slopes Logo Hat Black", price: 22.00, imageName: "hat02.png"),
        Product(title: "Slopes Logo Hat White ", price: 21.00, imageName: "hat03.png"),
        Product(title: "Slopes", price: 28.00, imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(title: "Slopes Logo Hoodie Gray", price: 64.00, imageName: "hoodie01.png"),
        Product(title: "Slopes Logo hoodie Red", price: 60.00, imageName: "hoodie02.png"),
        Product(title: "Slopes Logo hoodie Gray", price: 58.00, imageName: "hoodie03.png"),
        Product(title: "Slopes Logo hoodie Black", price: 75.00, imageName: "hoodie04.png")
    ]
    
    private let shirts = [
        Product(title: "Slopes Logo Shirt Black", price: 23.00, imageName: "shirt01.png"),
        Product(title: "Slopes Logo Shirt Light Gray", price: 23.00, imageName: "shirt02.png"),
        Product(title: "Slopes Logo Shirt Red", price: 35.00, imageName: "shirt03.png"),
        Product(title: "Hustle Delegate Grey", price: 23.00, imageName: "shirt04.png"),
        Product(title: "Kickflip Studio Black", price: 18.00, imageName: "shirt05.png")
    ]
    

    private let digitalGoods = [
        Product(title: "Apple Watch Series 4", price: 399.00, imageName: "Apple Watch.png"),
        Product(title: "Rose Gold iPad", price: 450.00, imageName: "ipad.png"),
        Product(title: "Macbook Pro", price: 1800.00, imageName: "macbookpro.png"),
        Product(title: "Mavic 2 Pro", price: 1729.00, imageName: "drone.png")
    ]

    func getCategories() -> [Category] {
        return categories
    }
    
    func getProducts(forCategoryTitle title: String) -> [Product] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getDigitalGoods() -> [Product] {
        return digitalGoods
    }
}

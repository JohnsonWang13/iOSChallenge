//
//  ShopA.swift
//  WhatEver
//
//  Created by 王富生 on 2017/3/2.
//  Copyright © 2017年 王富生. All rights reserved.
//

import Foundation

class ShopA {
    var names = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P"]
    var productA = [Product]()
    
    init() {
        for i in 0..<names.count {
            productA.append(Product(name: names[i], price: 5 * (i + 1)))
        }
    }
}

class ShopB {
    var names = ["I","II","III","IV","V","VI","VII","VIII","IX","X"]
    var productB = [Product]()
    
    init() {
        for i in 0..<names.count {
            productB.append(Product(name: names[i], price: (i * 2) + 1))
        }
    }
}

class Shop {
    let shopA = ShopA()
    let shopB = ShopB()
    
    var price: [Int] = []
    
    var productA: [Product]
    var productB: [Product]
    
    var twoProduct: [[Product]]
    
    var product: [Product]
    init() {
        
        productA = shopA.productA
        productB = shopB.productB
        
        twoProduct = [productA, productB]
        
        product = productA + productB
        
        rename("ShopA", product: &shopA.productA)
        rename("ShopB", product: &shopB.productB)
        
        twoProduct = [productA, productB]
        
        product = productA + productB
        
        priceMix(&price, product: productA)
        priceMix(&price, product: productB)
        priceMuti100(&price)
        priceSequence(&price)
        priceRange(price, range: 3000)
        
    }
    
    func rename(_ shopName: String, product: inout [Product]) {
        for i in 0..<product.count {
            product[i].name = shopName + " - " + product[i].name
        }
    }
    
    func priceMix(_ price: inout [Int], product: [Product]) {
        for i in 0..<product.count {
            price.append(product[i].price)
        }
    }
    
    func priceMuti100(_ price: inout [Int]) {
        for i in 0..<price.count {
            price[i] = price[i] * 100
        }
    }
    
    func priceSequence(_ price: inout [Int]) {
        print("-----Sequence----")
        for price in price.sorted() {
            print(price)
        }
    }
    
    func priceRange(_ price: [Int], range: Int) {
        print("----Over\(range)----")
        for price in price {
            if price >= range {
                print(price)
            }
        }
    }
}



struct Product {
    var name: String
    var price: Int
}

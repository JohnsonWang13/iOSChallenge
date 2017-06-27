//
//  Commodity.swift
//  IOSChallenge3
//
//  Created by 王富生 on 2017/2/14.
//  Copyright © 2017年 王富生. All rights reserved.
//

import Foundation

struct Commodity {
    var name: String
    var price: Int
}

class Store {
    let commodity: [Commodity] = [Commodity(name: "Maa", price: 20),
                                  Commodity(name: "Mab", price: 100),
                                  Commodity(name: "Mac", price: 150),
                                  Commodity(name: "Mad", price: 139),
                                  Commodity(name: "Mae", price: 113),
                                  Commodity(name: "Maf", price: 167),
                                  Commodity(name: "Mag", price: 30),
                                  Commodity(name: "Mah", price: 50),
                                  Commodity(name: "Mai", price: 10),
                                  Commodity(name: "Maj", price: 200)]
    
}

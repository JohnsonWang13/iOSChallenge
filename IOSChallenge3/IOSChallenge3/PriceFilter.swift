//
//  PriceFilter.swift
//  IOSChallenge3
//
//  Created by 王富生 on 2017/2/14.
//  Copyright © 2017年 王富生. All rights reserved.
//

import Foundation

class PriceFilter {
    
    let priceRange = [0, 50, 100, 150, 200]
    
    let store = Store()
    
    func filter(selectedIndex: [Int]) ->  [Commodity] {
        if selectedIndex.count > 0 {
            var filterStore: [Commodity] = []
            for selectedIndex in selectedIndex {
                for i in 0..<store.commodity.count {
                    if store.commodity[i].price > priceRange[selectedIndex] && store.commodity[i].price <= priceRange[selectedIndex + 1] {
                        filterStore.append(store.commodity[i])
                    }
                }
            }
            return filterStore
        } else {
            return store.commodity
        }
    }
}

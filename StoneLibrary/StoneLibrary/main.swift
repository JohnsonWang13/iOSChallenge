//
//  main.swift
//  StoneLibrary
//
//  Created by 王富生 on 2017/2/14.
//  Copyright © 2017年 王富生. All rights reserved.
//

import Foundation


let bookName = "Th"

let bookSearch = BooksSearch()

let nameSearch = bookSearch.search(bybookName: bookName)

let categorySearch = bookSearch.search(bybooksClass: .math)

print(categorySearch)

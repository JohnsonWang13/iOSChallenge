//
//  BookSearch.swift
//  StoneLibrary
//
//  Created by 王富生 on 2017/2/14.
//  Copyright © 2017年 王富生. All rights reserved.
//

import Foundation


class BooksSearch {
    
    private let booksLibrary = LibraryDB()
    
    func search(bybookName bookName: String) -> [Book]{
        
        var yourBooks = [Book]()
        
        for i in 0..<booksLibrary.books.count {
            
            if booksLibrary.books[i].name.contains(bookName) {
                
                yourBooks.append(booksLibrary.books[i])
            }
        }
        return yourBooks
    }
    
    func search(bybooksClass: BookCategory) -> [Book] {
        
        var yourBooks = [Book]()
        
        switch bybooksClass {
        case .novel:
            for i in 0..<booksLibrary.books.count {
                if booksLibrary.books[i].category == .novel {
                    yourBooks.append( booksLibrary.books[i])
                }
            }
        case .math:
            for i in 0..<booksLibrary.books.count {
                if booksLibrary.books[i].category == .math {
                    yourBooks.append( booksLibrary.books[i])
                }
            }
        case .science:
            for i in 0..<booksLibrary.books.count {
                if booksLibrary.books[i].category == .science {
                    yourBooks.append( booksLibrary.books[i])
                }
            }
        }
        return yourBooks
    }
}

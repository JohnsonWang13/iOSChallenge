//
//  BooksInformtion.swift
//  StoneLibrary
//
//  Created by 王富生 on 2017/2/14.
//  Copyright © 2017年 王富生. All rights reserved.
//

import Foundation

enum BookCategory {
    case novel
    case math
    case science
}

struct Book {
    var name:String
    var category:BookCategory
}

class LibraryDB {
    var books:[Book] = [Book(name:"The Girl on the Train",category:.novel),
                        Book(name:"The Girls",category:.novel),
                        Book(name:"The Girl Before",category:.novel),
                        Book(name:"The Girl Next Door",category:.novel),
                        Book(name:"The Science Book",category:.science),
                        Book(name:"Elements",category:.science),
                        Book(name:"Women in Science",category:.science),
                        Book(name:"TKnowledge Encyclopedia",category:.science),
                        Book(name:"Secrets of Mental Math",category:.math),
                        Book(name:"Basic Math",category:.math),
                        Book(name:"The Magic of Math",category:.math),
                        Book(name:"Common Core Math 4 Today",category:.math),]
}

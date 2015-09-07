//
//  Person.swift
//  Project10
//
//  Created by Elex Lee on 9/6/15.
//  Copyright (c) 2015 Elex Lee. All rights reserved.
//

import UIKit

class Person: NSObject {
    
    var name: String
    var image: String
    
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }
}

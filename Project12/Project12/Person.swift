//
//  Person.swift
//  Project12
//
//  Created by Elex Lee on 9/6/15.
//  Copyright (c) 2015 Elex Lee. All rights reserved.
//

import UIKit

class Person: NSObject, NSCoding {
   
    var name: String
    var image: String
    
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }
    
    required init(coder aDecoder: NSCoder) {
    name = aDecoder.decodeObjectForKey("name") as! String
    image = aDecoder.decodeObjectForKey("image") as! String
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
    aCoder.encodeObject(name, forKey: "name")
    aCoder.encodeObject(image, forKey: "image")
    }
    
}

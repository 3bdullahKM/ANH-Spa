//
//  Catagory.swift
//  ANH
//
//  Created by Abdullah Almutairi on 13/05/2018.
//  Copyright © 2018 Abdullah Almutairi. All rights reserved.
//

import Foundation

struct Catagory {
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title:String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}

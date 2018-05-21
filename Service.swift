//
//  Service.swift
//  ANH
//
//  Created by Abdullah Almutairi on 18/05/2018.
//  Copyright © 2018 Abdullah Almutairi. All rights reserved.
//

import Foundation
struct Service {
    
    private(set) public var title: String
    private(set) public var price: String
    private(set) public var imageName: String
    
    init(title: String, price: String, imageName: String) {
        
        self.title = title
        self.price = price
        self.imageName = imageName
        
    }
    

}

//
//  DataService.swift
//  ANH
//
//  Created by Abdullah Almutairi on 13/05/2018.
//  Copyright © 2018 Abdullah Almutairi. All rights reserved.
//

import Foundation

class DataService {
    
    static let instance = DataService()
    
    private let catagories = [
    Catagory(title: "Massage", imageName: "massageCatagory"),
    Catagory(title: "Manicure & Padicure", imageName:"manicureCatagory")
    ]
    
    func getCatagories() -> [Catagory]    {
        return catagories
    }
    
    ////////////////////////////
    
    
    public let massage = [Service(title: "Stone Massage", price: "30$", imageName: "stone"),
                          Service(title: "Foot Massage", price: "90$",imageName: "foot"),
                          Service(title: "Deep Tissue", price: "62$", imageName: "deepTissue"),
                          Service(title: "Sweedish Massage", price: "84$",imageName: "physicalTherapy")
    ]
     public let manicure = [Service(title: "Regular Manicure and Pedicure", price: "40$",imageName: "manicureImg"),
                            Service(title: "French Regular Manicure and Pedicure", price: "50$", imageName: "facial"),
                            Service(title: "Spa Manicure and Pedicure", price: "200$",imageName: "spaMan")
    
    ]
    
    func getServices(forCatagoryTitle title:String) -> [Service]  {
        
        switch title {
            
        case "Massage":
            return getMassage()
            
        case "Manicure and Pedicure":
            return getManicure()
            
        default:
            return getMassage()
        }
        
    }
    
    func getMassage() -> [Service] {
        return manicure
    }
    func getManicure() -> [Service] {
        return manicure
    }
        
}



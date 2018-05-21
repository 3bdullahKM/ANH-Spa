//
//  CustomCell.swift
//  ANH
//
//  Created by Abdullah Almutairi on 14/05/2018.
//  Copyright © 2018 Abdullah Almutairi. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
    
    @IBOutlet weak var serviceName: UILabel!
    
    @IBOutlet weak var serviceImage: UIImageView!
    
    
    @IBOutlet weak var servicePrice: UILabel!
    
    func updateCustomViews(service: Service) {
        serviceImage.image = UIImage(named: service.imageName)
        serviceName.text = service.title
        servicePrice.text = service.price
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}

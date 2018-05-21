//
//  CatagoryCell.swift
//  ANH
//
//  Created by Abdullah Almutairi on 13/05/2018.
//  Copyright © 2018 Abdullah Almutairi. All rights reserved.
//

import UIKit

class CatagoryCell: UITableViewCell {
    
    @IBOutlet weak var catagoryImage: UIImageView!
    @IBOutlet weak var catagoryTitle: UILabel!
    
    func updateViews(catagory: Catagory) {
        catagoryImage.image = UIImage(named: catagory.imageName)
        catagoryTitle.text = catagory.title
    }

}

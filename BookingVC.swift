//
//  BookingVC.swift
//  ANH
//
//  Created by Abdullah Almutairi on 19/05/2018.
//  Copyright © 2018 Abdullah Almutairi. All rights reserved.
//

//
//  ViewController.swift
//  TestEureka
//
//  Created by Abdullah Almutairi on 20/05/2018.
//  Copyright © 2018 Abdullah Almutairi. All rights reserved.
//

import UIKit

import Eureka

class BookingVC:  FormViewController {
    
    @IBOutlet weak var aoctshun: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        form +++ Section("Please provide your name and phone number")
            <<< TextRow(){ row in
                row.title = "Your Name"
                row.placeholder = "Enter name here"
            }
            <<< PhoneRow(){
                $0.title = "Phone number"
                $0.placeholder = "05********"
            }
            +++ Section("When would you like to have the appointment")
            <<< DateTimeRow(){
                $0.title = "Select time & date"
                $0.value = Date(timeIntervalSinceReferenceDate: 0)
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}




//
//  ServiceVC.swift
//  ANH
//
//  Created by Abdullah Almutairi on 14/05/2018.
//  Copyright © 2018 Abdullah Almutairi. All rights reserved.
//

import UIKit

class ServiceVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBAction func bookingseg(_ sender: Any) {
    }
    var selectedRow : Int?
   
    
    private(set) public var services = [Service]()
    
    @IBOutlet weak var serviceTableView: UITableView!
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        serviceTableView.delegate = self
        serviceTableView.dataSource = self
        
        serviceTableView.register(UINib(nibName: "CustomCell", bundle: nil), forCellReuseIdentifier: "CustomCell")

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if self.selectedRow == 0 {
            return DataService.instance.massage.count
        }
        else if self.selectedRow == 1 {
            return DataService.instance.manicure.count
            
        }
        else {
            return DataService.instance.massage.count
        }
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CustomCell
        //let service = DataService.instance.getServices(forCatagoryTitle: "Massage")[indexPath.row]
        
        if selectedRow == 0 {
            cell.serviceName.text = DataService.instance.massage[indexPath.row].title
            cell.servicePrice.text = DataService.instance.massage[indexPath.row].price
            //cell.serviceImage(named: "") = DataService.instance.massage[indexPath.row].imageName
            
        }
        else if selectedRow == 1 {
            cell.serviceName.text = DataService.instance.manicure[indexPath.row].title
            cell.servicePrice.text = DataService.instance.manicure[indexPath.row].price
            //cell.serviceImage(named: "") = DataService.instance.massage[indexPath.row].imageName
        }
        else {
            cell.serviceName.text = DataService.instance.massage[indexPath.row].title
            cell.servicePrice.text = DataService.instance.massage[indexPath.row].price
            //cell.serviceImage(named: "") = DataService.instance.massage[indexPath.row].imageName
            
        }
        
        //cell.updateCustomViews(service:service)
        return cell
        
        
        
    }
    func initService(catagory: Catagory) {
        services = DataService.instance.getServices(forCatagoryTitle: catagory.title)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

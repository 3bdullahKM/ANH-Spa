//
//  CatagoriesVC.swift
//  ANH
//
//  Created by Abdullah Almutairi on 13/05/2018.
//  Copyright © 2018 Abdullah Almutairi. All rights reserved.
//

import UIKit
import CoreLocation
import Firebase

class CatagoriesVC: UIViewController, UITableViewDelegate, UITableViewDataSource, CLLocationManagerDelegate {
    
    var userLogged : Bool = false

    let locationManeger = CLLocationManager()
    

    @IBOutlet weak var catagoryTable: UITableView!
    
    
    @IBOutlet weak var signInLogOut: UIBarButtonItem!
    
    
    
    @IBAction func signInOrLogOut(_ sender: Any) {
        if self.userLogged == false{
            performSegue(withIdentifier: "goToLogIn", sender: self)
        }
        else {
            do {
                try Auth.auth().signOut()
                navigationController?.popToRootViewController(animated: true)
                self.userLogged = false
            }
            catch {
                print("error, there was a problem siging out")
                
            }
        }
    }
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let barButton = signInLogOut
        if userLogged == true {
            barButton?.title = "Log out"
            navigationItem.rightBarButtonItem = barButton
        }
        else {
            barButton?.title = "Sign in"
            navigationItem.rightBarButtonItem = barButton
        }
        
        
        locationManeger.delegate = self
        locationManeger.desiredAccuracy = kCLLocationAccuracyBest
        locationManeger.requestWhenInUseAuthorization()
        locationManeger.startUpdatingLocation()
        // Do any additional setup after loading the view, typically from a nib.
        catagoryTable.dataSource = self
        catagoryTable.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCatagories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CatagoryCell") as? CatagoryCell {
            let catagory = DataService.instance.getCatagories()[indexPath.row]
            
            cell.updateViews(catagory: catagory)
            return cell
            
        } else {
            return CatagoryCell()
            
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations[locations.count-1]
        
        if location.horizontalAccuracy > 0 {
            locationManeger.stopUpdatingLocation()
            print("longtitude = \(location.coordinate.longitude), latitude = \(location.coordinate.latitude)")
            
            let latitude = String(location.coordinate.latitude)
            let longitude = String(location.coordinate.longitude)
            let parameters : [String:String] = ["lat" : latitude, "lon" : longitude]
            
        }
        
    }
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
        print("Location unavailable")
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let catagory = DataService.instance.getCatagories()[indexPath.row]
        print(catagory)

        performSegue(withIdentifier: "goToService", sender: catagory)

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let serviceVC = segue.destination as? ServiceVC {
            assert(sender as? Catagory != nil)
            
            let selectedRow = catagoryTable.indexPathForSelectedRow?.row
            serviceVC.selectedRow = selectedRow

        }
    }
 

}


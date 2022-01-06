//
//  contactUsViewController.swift
//  FaceAqar
//
//  Created by Ebtsam alkhuzai on 19/06/1442 AH.
//

import UIKit
import SwiftyMenu
import GoogleMaps
import GooglePlaces
import MapKit

class contactUsViewController: UIViewController {


    @IBOutlet weak var serviceView: SwiftyMenu!
    @IBOutlet weak var cityMenu: SwiftyMenu!
    @IBOutlet weak var regionMenu: SwiftyMenu!
    @IBOutlet weak var countryMenu: SwiftyMenu!
    
    @IBOutlet weak var informationTV: UITableView!
    @IBOutlet weak var socialMedia: UICollectionView!
    
    var titles = ["To Serve Real Estate Pages", "To Serve Broker" ,"To Serve Real Estate Contract Writing" , "To Serve Customers" , "Fax" , "Mail Box" ,"Postal Code" , "Email Address"]
    
    var mapView: GMSMapView!
    
    @IBOutlet weak var mapViewS: UIView!
    
   var socialImage = [UIImage(named: "Snapchat.png"), UIImage(named: "tele.png"),UIImage(named: "twitter.png"),UIImage(named: "whatsApp.png"),UIImage(named: "Youtube.png"),UIImage(named: "linkedIn.png"),UIImage(named: "faceBook.png") ]
    //linkedIn faceBook
    
    private let items: [SwiftyMenuDisplayable] = ["Option 1", "Option 2", "Option 3", "Option 4"]
    private let items2: [SwiftyMenuDisplayable] = ["Option 1", "Option 2", "Option 3", "Option 4"]

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.backBarButtonItem = UIBarButtonItem(
            title: "", style: .plain, target: nil, action: nil)
        
        navigationController?.isNavigationBarHidden = false
        setUpDropDownMenu()
        
   
         GMSServices.provideAPIKey("AIzaSyDgg4D567XfdUCA_kVrL0AuTV-xbZ4KvW0")
         
         let camera = GMSCameraPosition.camera(withLatitude: -33.86, longitude: 151.20, zoom: 6.0)
         self.mapView = GMSMapView.map(withFrame:self.mapViewS.bounds, camera: camera)
         mapView.frame = CGRect(x: 0, y: 0, width: self.mapViewS.frame.size.width , height: self.mapViewS.frame.size.height)


         self.mapViewS.addSubview(mapView)
        
               // Creates a marker in the center of the map.
               let marker = GMSMarker()
               marker.position = CLLocationCoordinate2D(latitude: -33.86, longitude: 151.20)
               marker.title = "Sydney"
               marker.snippet = "Australia"
               marker.map = mapView
    }
    
        


    
    func setUpDropDownMenu(){
        
        cityMenu.delegate = self
        cityMenu.items = items2
        cityMenu.placeHolderText = "city"
        cityMenu.separatorCharacters = " & "
        
        
        // Support CallBacks
        cityMenu.didExpand = {
            print("SwiftyMenu Expanded!")
        }
        
        cityMenu.didCollapse = {
            print("SwiftyMenu Collapsed!")
        }
        
        cityMenu.didSelectItem = { _, item, index in
            print("\(item) at index: \(index)")
        }
        
        
        // Custom Behavior
        cityMenu.scrollingEnabled = true
        cityMenu.isMultiSelect = false
        cityMenu.hideOptionsWhenSelect = false
        
        // Custom UI
        cityMenu.rowHeight = 35
        cityMenu.listHeight = 300
        cityMenu.borderWidth = 1.0
        
        // Custom Colors
        cityMenu.borderColor = .clear
        cityMenu.itemTextColor = .black
        cityMenu.placeHolderColor = .lightGray
        cityMenu.menuHeaderBackgroundColor = .white
        cityMenu.rowBackgroundColor = .white
        cityMenu.separatorColor = .white
        
        // Custom Animation
        cityMenu.expandingAnimationStyle = .spring(level: .low)
        cityMenu.expandingDuration = 0.5
        cityMenu.collapsingAnimationStyle = .linear
        cityMenu.collapsingDuration = 0.5
        
        
        
        
        countryMenu.delegate = self
        countryMenu.items = items
        countryMenu.placeHolderText = "Country"
        countryMenu.separatorCharacters = " & "
        
        
        // Support CallBacks
        countryMenu.didExpand = {
            print("SwiftyMenu Expanded!")
        }
        
        countryMenu.didCollapse = {
            print("SwiftyMenu Collapsed!")
        }
        
        countryMenu.didSelectItem = { _, item, index in
            print("\(item) at index: \(index)")
        }
        
        
        // Custom Behavior
        countryMenu.scrollingEnabled = true
        countryMenu.isMultiSelect = false
        countryMenu.hideOptionsWhenSelect = false
        
        // Custom UI
        countryMenu.rowHeight = 35
        countryMenu.listHeight = 300
        countryMenu.borderWidth = 1.0
        
        // Custom Colors
        countryMenu.borderColor = .clear
        countryMenu.itemTextColor = .black
        countryMenu.placeHolderColor = .lightGray
        countryMenu.menuHeaderBackgroundColor = .white
        countryMenu.rowBackgroundColor = .white
        countryMenu.separatorColor = .white
        
        // Custom Animation
        countryMenu.expandingAnimationStyle = .spring(level: .low)
        countryMenu.expandingDuration = 0.5
        countryMenu.collapsingAnimationStyle = .linear
        countryMenu.collapsingDuration = 0.5
        
        ///// // // // // // / / // / / / // / // / // / / // // // // // // // // // // // //

        
        serviceView.delegate = self
        serviceView.items = items
        serviceView.placeHolderText = "Country"
        serviceView.separatorCharacters = " & "
        
        
        // Support CallBacks
        serviceView.didExpand = {
            print("SwiftyMenu Expanded!")
        }
        
        serviceView.didCollapse = {
            print("SwiftyMenu Collapsed!")
        }
        
        serviceView.didSelectItem = { _, item, index in
            print("\(item) at index: \(index)")
        }
        
        
        // Custom Behavior
        serviceView.scrollingEnabled = true
        serviceView.isMultiSelect = false
        serviceView.hideOptionsWhenSelect = false
        
        // Custom UI
        serviceView.rowHeight = 35
        serviceView.listHeight = 300
        serviceView.borderWidth = 1.0
        
        // Custom Colors
        serviceView.borderColor = .clear
        serviceView.itemTextColor = .black
        serviceView.placeHolderColor = .lightGray
        serviceView.menuHeaderBackgroundColor = .white
        serviceView.rowBackgroundColor = .white
        serviceView.separatorColor = .white
        
        // Custom Animation
        serviceView.expandingAnimationStyle = .spring(level: .low)
        serviceView.expandingDuration = 0.5
        serviceView.collapsingAnimationStyle = .linear
        serviceView.collapsingDuration = 0.5
        
        ///// // // // // // / / // / / / // / // / // / / // // // // // // // // // // // //
        
        regionMenu.delegate = self
        regionMenu.items = items
        regionMenu.placeHolderText = "Region"
        regionMenu.separatorCharacters = " & "
        
        
        // Support CallBacks
        regionMenu.didExpand = {
            print("SwiftyMenu Expanded!")
        }
        
        regionMenu.didCollapse = {
            print("SwiftyMenu Collapsed!")
        }
        
        regionMenu.didSelectItem = { _, item, index in
            print("\(item) at index: \(index)")
        }
        
        
        // Custom Behavior
        regionMenu.scrollingEnabled = true
        regionMenu.isMultiSelect = false
        regionMenu.hideOptionsWhenSelect = false
        
        // Custom UI
        regionMenu.rowHeight = 35
        regionMenu.listHeight = 300
        regionMenu.borderWidth = 1.0
        
        // Custom Colors
        regionMenu.borderColor = .clear
        regionMenu.itemTextColor = .black
        regionMenu.placeHolderColor = .lightGray
        regionMenu.menuHeaderBackgroundColor = .white
        regionMenu.rowBackgroundColor = .white
        regionMenu.separatorColor = .white
        
        // Custom Animation
        regionMenu.expandingAnimationStyle = .spring(level: .low)
        regionMenu.expandingDuration = 0.5
        regionMenu.collapsingAnimationStyle = .linear
        regionMenu.collapsingDuration = 0.5
        
        ///// // // // // // / / // / / / // / // / // / / // // // // // // // // // // // //
        
       
        
       
    }

}

extension contactUsViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return socialImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell" , for: indexPath) as! contactUsCell

        cell.contactUsView.layer.cornerRadius = 5
        cell.contactUsView.layer.borderWidth = 0.7
        cell.contactUsView.layer.borderColor = UIColor.black.cgColor
        cell.socialImage.image = socialImage[indexPath.row]
        
        return cell
    }

}

extension contactUsViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return 8
  
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell" , for: indexPath) as! infoCell
        
        cell.titileLbl.text = titles[indexPath.row]
        cell.selectionStyle = .none

        return cell
    }
    
    
    
}




extension contactUsViewController: SwiftyMenuDelegate {
    // Get selected option from SwiftyMenu
    func swiftyMenu(_ swiftyMenu: SwiftyMenu, didSelectItem item: SwiftyMenuDisplayable, atIndex index: Int) {
        print("Selected item: \(item), at index: \(index)")
    }
    
    // SwiftyMenu drop down menu will expand
    func swiftyMenu(willExpand swiftyMenu: SwiftyMenu) {
        print("SwiftyMenu willExpand.")
    }

    // SwiftyMenu drop down menu did expand
    func swiftyMenu(didExpand swiftyMenu: SwiftyMenu) {
        print("SwiftyMenu didExpand.")
    }

    // SwiftyMenu drop down menu will collapse
    func swiftyMenu(willCollapse swiftyMenu: SwiftyMenu) {
        print("SwiftyMenu willCollapse.")
    }

    // SwiftyMenu drop down menu did collapse
    func swiftyMenu(didCollapse swiftyMenu: SwiftyMenu) {
        print("SwiftyMenu didCollapse.")
    }
}



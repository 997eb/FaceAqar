//
//  addPropertyStepThreeViewController.swift
//  FaceAqar
//
//  Created by Ebtsam alkhuzai on 26/06/1442 AH.
//

import UIKit
import SwiftyMenu

class addPropertyStepThreeViewController: UIViewController{
    @IBOutlet weak var countryMenu: SwiftyMenu!
    
    @IBOutlet weak var stepsImg: UIImageView!
    @IBOutlet weak var cityMenu: SwiftyMenu!
    @IBOutlet weak var regionMenu: SwiftyMenu!
    private let items: [SwiftyMenuDisplayable] = ["Option 1", "Option 2", "Option 3", "Option 4"]
    private let items2: [SwiftyMenuDisplayable] = ["Option 1", "Option 2", "Option 3", "Option 4"]
    @IBOutlet weak var offerOutlet: UIButton!
    @IBOutlet weak var requestOutlet: UIButton!
    @IBOutlet weak var auctionsOutlet: UIButton!


    override func viewDidLoad() {
        super.viewDidLoad()
        setUpMenu()
 

    }
    
    
    
    func setUpMenu(){
        
       // countryMenu.delegate = self
        
        self.countryMenu.delegate = self
        self.regionMenu.delegate = self
        self.cityMenu.delegate = self

        
        countryMenu.items = items
        countryMenu.placeHolderText = "Please Select Item"
        countryMenu.separatorCharacters = " & "
        
        regionMenu.items = items
        regionMenu.placeHolderText = "Please Select Item"
        regionMenu.separatorCharacters = " & "
        
        cityMenu.items = items
        cityMenu.placeHolderText = "Please Select Item"
        cityMenu.separatorCharacters = " & "
        
        
        
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
        countryMenu.placeHolderColor = .black
        countryMenu.menuHeaderBackgroundColor = .white
        countryMenu.rowBackgroundColor = .white
        countryMenu.separatorColor = .white
        
        // Custom Animation
        countryMenu.expandingAnimationStyle = .spring(level: .low)
        countryMenu.expandingDuration = 0.5
        countryMenu.collapsingAnimationStyle = .linear
        countryMenu.collapsingDuration = 0.5
        
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
        regionMenu.placeHolderColor = .black
        regionMenu.menuHeaderBackgroundColor = .white
        regionMenu.rowBackgroundColor = .white
        regionMenu.separatorColor = .white
        
        // Custom Animation
        regionMenu.expandingAnimationStyle = .spring(level: .low)
        regionMenu.expandingDuration = 0.5
        regionMenu.collapsingAnimationStyle = .linear
        regionMenu.collapsingDuration = 0.5
        
        
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
        cityMenu.placeHolderColor = .black
        cityMenu.menuHeaderBackgroundColor = .white
        cityMenu.rowBackgroundColor = .white
        cityMenu.separatorColor = .white
        
        // Custom Animation
        cityMenu.expandingAnimationStyle = .spring(level: .low)
        cityMenu.expandingDuration = 0.5
        cityMenu.collapsingAnimationStyle = .linear
        cityMenu.collapsingDuration = 0.5

    }
    
    
    @IBAction func offersBtn(_ sender: Any) {
        stepsImg.image = UIImage(named: "step2.png")
        self.offerOutlet.tag = 1
        self.offerOutlet.backgroundColor = UIColor.gray
        self.requestOutlet.backgroundColor = UIColor(red: 0.92, green: 0.92, blue: 0.92, alpha: 1.00)
        self.auctionsOutlet.backgroundColor = UIColor(red: 0.92, green: 0.92, blue: 0.92, alpha: 1.00)

  
        
        
    }
    
    @IBAction func requestBtn(_ sender: Any) {
        
        self.requestOutlet.tag = 1
        self.requestOutlet.backgroundColor = UIColor.gray
        self.offerOutlet.backgroundColor = UIColor(red: 0.92, green: 0.92, blue: 0.92, alpha: 1.00)
        self.auctionsOutlet.backgroundColor = UIColor(red: 0.92, green: 0.92, blue: 0.92, alpha: 1.00)
        stepsImg.image = UIImage(named: "step2.png")

    }
    
  

    
    @IBAction func auctionsBtn(_ sender: Any) {
        
        self.auctionsOutlet.tag = 1
        self.auctionsOutlet.backgroundColor = UIColor.gray
        self.offerOutlet.backgroundColor = UIColor(red: 0.92, green: 0.92, blue: 0.92, alpha: 1.00)
        self.requestOutlet.backgroundColor = UIColor(red: 0.92, green: 0.92, blue: 0.92, alpha: 1.00)
        
        stepsImg.image = UIImage(named: "auctionsSteps.png")

    }
    

}



extension addPropertyStepThreeViewController: SwiftyMenuDelegate {
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



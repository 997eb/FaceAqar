//
//  BrokerPhotoViewController.swift
//  FaceAqar
//
//  Created by Ebtsam alkhuzai on 28/06/1442 AH.
//

import UIKit
import SwiftyMenu


class BrokerPhotoViewController: UIViewController {

    @IBOutlet weak var duration: SwiftyMenu!
    @IBOutlet weak var imageSize: SwiftyMenu!
    
    private let sizes: [SwiftyMenuDisplayable] = ["Size 1", "Size 2", "Quarter Page", "half Page" , "Entire Page"]
    private let Duration: [SwiftyMenuDisplayable] = ["1 week", "2 weeks", "1 Month", "2 Month" , "3 Months", "6 Months" , "1 Year" ]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpMenu()
        navigationItem.backBarButtonItem = UIBarButtonItem(
            title: "", style: .plain, target: nil, action: nil)
    }

    
   func setUpMenu (){
        
    self.duration.delegate = self
    duration.items = Duration
    duration.placeHolderText = "Choose"

        
        // Support CallBacks
    duration.didExpand = {
            print("SwiftyMenu Expanded!")
        }
        
    duration.didCollapse = {
            print("SwiftyMenu Collapsed!")
        }
        
    duration.didSelectItem = { _, item, index in
            print("\(item) at index: \(index)")
        }
        
        // Custom Behavior
    duration.scrollingEnabled = true
    duration.isMultiSelect = false
    duration.hideOptionsWhenSelect = false
        
        // Custom UI
    duration.rowHeight = 35
    duration.listHeight = 300
    duration.borderWidth = 1.0
        
        // Custom Colors
    duration.borderColor = .clear
    duration.itemTextColor = UIColor(red: 0.04, green: 0.07, blue: 0.32, alpha: 1.00)
    duration.placeHolderColor = .black
    duration.menuHeaderBackgroundColor = .white
    duration.rowBackgroundColor = UIColor(red: 0.90, green: 0.91, blue: 0.95, alpha: 1.00)
    duration.separatorColor = .white
        
        // Custom Animation
    duration.expandingAnimationStyle = .spring(level: .low)
    duration.expandingDuration = 0.5
    duration.collapsingAnimationStyle = .linear
    duration.collapsingDuration = 0.5
    
    self.imageSize.delegate = self
    imageSize.items = sizes
    imageSize.placeHolderText = "Choose"

        
        // Support CallBacks
    imageSize.didExpand = {
            print("SwiftyMenu Expanded!")
        }
        
    imageSize.didCollapse = {
            print("SwiftyMenu Collapsed!")
        }
        
    imageSize.didSelectItem = { _, item, index in
            print("\(item) at index: \(index)")
        }
        

        
        // Custom Behavior
    imageSize.scrollingEnabled = true
    imageSize.isMultiSelect = false
    imageSize.hideOptionsWhenSelect = false
        
        // Custom UI
    imageSize.rowHeight = 35
    imageSize.listHeight = 300
    imageSize.borderWidth = 1.0
        
        // Custom Colors
    imageSize.borderColor = .clear
    imageSize.itemTextColor = UIColor(red: 0.04, green: 0.07, blue: 0.32, alpha: 1.00)
    imageSize.placeHolderColor = .black
    imageSize.menuHeaderBackgroundColor = .white
    imageSize.rowBackgroundColor = UIColor(red: 0.90, green: 0.91, blue: 0.95, alpha: 1.00)
    imageSize.separatorColor = .white
        
        // Custom Animation
    imageSize.expandingAnimationStyle = .spring(level: .low)
    imageSize.expandingDuration = 0.5
    imageSize.collapsingAnimationStyle = .linear
    imageSize.collapsingDuration = 0.5

        

    }
}


extension BrokerPhotoViewController: SwiftyMenuDelegate {
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



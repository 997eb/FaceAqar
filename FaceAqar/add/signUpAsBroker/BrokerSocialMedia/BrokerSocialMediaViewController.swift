//
//  BrokerSocialMediaViewController.swift
//  FaceAqar
//
//  Created by Ebtsam alkhuzai on 28/06/1442 AH.
//

import UIKit
import SwiftyMenu

class BrokerSocialMediaViewController: UIViewController {

    @IBOutlet weak var socialMediaType: SwiftyMenu!
    @IBOutlet weak var adDuration: SwiftyMenu!
    
    private let socialMedia: [SwiftyMenuDisplayable] = ["Facebook", "twitter", "instagram", "snapchat" , "WhatsApp Group", "YouTube" , "LinkedIn" , "Google+" , "Telegram" ]
    private let Duration: [SwiftyMenuDisplayable] = ["1 week", "2 weeks", "1 Month", "2 Month" , "3 Months", "6 Months" , "1 Year" ]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpMenu()
        navigationItem.backBarButtonItem = UIBarButtonItem(
            title: "", style: .plain, target: nil, action: nil)
    }

    
   func setUpMenu (){
        
    self.socialMediaType.delegate = self
    socialMediaType.items = socialMedia
    socialMediaType.placeHolderText = "Choose"

        
        // Support CallBacks
    socialMediaType.didExpand = {
            print("SwiftyMenu Expanded!")
        }
        
    socialMediaType.didCollapse = {
            print("SwiftyMenu Collapsed!")
        }
        
    socialMediaType.didSelectItem = { _, item, index in
            print("\(item) at index: \(index)")
        }
        

        
        // Custom Behavior
    socialMediaType.scrollingEnabled = true
    socialMediaType.isMultiSelect = false
    socialMediaType.hideOptionsWhenSelect = false
        
        // Custom UI
    socialMediaType.rowHeight = 35
    socialMediaType.listHeight = 300
    socialMediaType.borderWidth = 1.0
        
        // Custom Colors
    socialMediaType.borderColor = .clear
    socialMediaType.itemTextColor = UIColor(red: 0.04, green: 0.07, blue: 0.32, alpha: 1.00)
    socialMediaType.placeHolderColor = .black
    socialMediaType.menuHeaderBackgroundColor = .white
    socialMediaType.rowBackgroundColor = UIColor(red: 0.90, green: 0.91, blue: 0.95, alpha: 1.00)
    socialMediaType.separatorColor = .white
        
        // Custom Animation
    socialMediaType.expandingAnimationStyle = .spring(level: .low)
    socialMediaType.expandingDuration = 0.5
    socialMediaType.collapsingAnimationStyle = .linear
    socialMediaType.collapsingDuration = 0.5
    
    self.adDuration.delegate = self
    adDuration.items = Duration
    adDuration.placeHolderText = "Choose"

        
        // Support CallBacks
    adDuration.didExpand = {
            print("SwiftyMenu Expanded!")
        }
        
    adDuration.didCollapse = {
            print("SwiftyMenu Collapsed!")
        }
        
    adDuration.didSelectItem = { _, item, index in
            print("\(item) at index: \(index)")
        }
        

        
        // Custom Behavior
    adDuration.scrollingEnabled = true
    adDuration.isMultiSelect = false
    adDuration.hideOptionsWhenSelect = false
        
        // Custom UI
    adDuration.rowHeight = 35
    adDuration.listHeight = 300
    adDuration.borderWidth = 1.0
        
        // Custom Colors
    adDuration.borderColor = .clear
    adDuration.itemTextColor = UIColor(red: 0.04, green: 0.07, blue: 0.32, alpha: 1.00)
    adDuration.placeHolderColor = .black
    adDuration.menuHeaderBackgroundColor = .white
    adDuration.rowBackgroundColor = UIColor(red: 0.90, green: 0.91, blue: 0.95, alpha: 1.00)
    adDuration.separatorColor = .white
        
        // Custom Animation
    adDuration.expandingAnimationStyle = .spring(level: .low)
    adDuration.expandingDuration = 0.5
    adDuration.collapsingAnimationStyle = .linear
    adDuration.collapsingDuration = 0.5

        

    }
}


extension BrokerSocialMediaViewController: SwiftyMenuDelegate {
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



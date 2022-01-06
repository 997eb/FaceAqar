//
//  ElectronicPaymentViewController.swift
//  FaceAqar
//
//  Created by Ebtsam alkhuzai on 25/06/1442 AH.
//

import UIKit
import SwiftyMenu

class ElectronicPaymentViewController: UIViewController {
    
    @IBOutlet private weak var dropDownMenu: SwiftyMenu!
    @IBOutlet weak var dropDownMenu2: SwiftyMenu!
    // Define your Generic items array)
    private let items: [SwiftyMenuDisplayable] = ["Option 1", "Option 2", "Option 3", "Option 4"]
    private let items2: [SwiftyMenuDisplayable] = ["Option 1", "Option 2", "Option 3", "Option 4"]


    override func viewDidLoad() {
        super.viewDidLoad()

        dropDownMenu.delegate = self
        dropDownMenu.items = items
        dropDownMenu.placeHolderText = "Please Select Item"
        dropDownMenu.separatorCharacters = " & "
        
        dropDownMenu2.delegate = self
        dropDownMenu2.items = items
        dropDownMenu2.placeHolderText = "Please Select Item"
        dropDownMenu2.separatorCharacters = " & "
        
        
        
        // Support CallBacks
        dropDownMenu.didExpand = {
            print("SwiftyMenu Expanded!")
        }
        
        dropDownMenu.didCollapse = {
            print("SwiftyMenu Collapsed!")
        }
        
        dropDownMenu.didSelectItem = { _, item, index in
            print("\(item) at index: \(index)")
        }
        
        
        
        // Support CallBacks
        dropDownMenu2.didExpand = {
            print("SwiftyMenu Expanded!")
        }
        
        dropDownMenu2.didCollapse = {
            print("SwiftyMenu Collapsed!")
        }
        
        dropDownMenu2.didSelectItem = { _, item, index in
            print("\(item) at index: \(index)")
        }
        
        // Custom Behavior
        dropDownMenu.scrollingEnabled = true
        dropDownMenu.isMultiSelect = false
        dropDownMenu.hideOptionsWhenSelect = false
        
        // Custom UI
        dropDownMenu.rowHeight = 35
        dropDownMenu.listHeight = 300
        dropDownMenu.borderWidth = 1.0
        
        // Custom Colors
        dropDownMenu.borderColor = .clear
        dropDownMenu.itemTextColor = .black
        dropDownMenu.placeHolderColor = .lightGray
        dropDownMenu.menuHeaderBackgroundColor = .white
        dropDownMenu.rowBackgroundColor = .white
        dropDownMenu.separatorColor = .white
        
        // Custom Animation
        dropDownMenu.expandingAnimationStyle = .spring(level: .low)
        dropDownMenu.expandingDuration = 0.5
        dropDownMenu.collapsingAnimationStyle = .linear
        dropDownMenu.collapsingDuration = 0.5
        
        // Custom Behavior
        dropDownMenu2.scrollingEnabled = true
        dropDownMenu2.isMultiSelect = false
        dropDownMenu2.hideOptionsWhenSelect = false
        
        // Custom UI
        dropDownMenu2.rowHeight = 35
        dropDownMenu2.listHeight = 300
        dropDownMenu2.borderWidth = 1.0
        
        // Custom Colors
        dropDownMenu2.borderColor = .clear
        dropDownMenu2.itemTextColor = .black
        dropDownMenu2.placeHolderColor = .lightGray
        dropDownMenu2.menuHeaderBackgroundColor = .white
        dropDownMenu2.rowBackgroundColor = .white
        dropDownMenu2.separatorColor = .white
        
        // Custom Animation
        dropDownMenu2.expandingAnimationStyle = .spring(level: .low)
        dropDownMenu2.expandingDuration = 0.5
        dropDownMenu2.collapsingAnimationStyle = .linear
        dropDownMenu2.collapsingDuration = 0.5



    }
    
    
    

}

extension ElectronicPaymentViewController: SwiftyMenuDelegate {
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

extension String: SwiftyMenuDisplayable {
    public var retrievableValue: Any {
        return self
    }
    
    public var displayableValue: String {
        return self
    }
    
    public var retrivableValue: Any {
        return self
    }
}

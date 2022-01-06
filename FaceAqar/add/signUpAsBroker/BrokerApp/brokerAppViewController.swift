//
//  brokerAppViewController.swift
//  FaceAqar
//
//  Created by Ebtsam alkhuzai on 28/06/1442 AH.
//

import UIKit
import SwiftyMenu

class brokerAppViewController: UIViewController {

    
    //Huawei
    
    @IBOutlet weak var AdDuration: SwiftyMenu!
    private let items: [SwiftyMenuDisplayable] = ["1 week", "2 weeks", "1 Month", "2 Month" , "3 Months", "6 Months" , "1 Year" ]
    
    var AppTypes = ["iOS " , "Android" , "Windows", "Huawei"]
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpMenu()
        navigationItem.backBarButtonItem = UIBarButtonItem(
            title: "", style: .plain, target: nil, action: nil)
    }
    
   func setUpMenu (){
        
    self.AdDuration.delegate = self
    AdDuration.items = items
    AdDuration.placeHolderText = "Choose"

        
        // Support CallBacks
    AdDuration.didExpand = {
            print("SwiftyMenu Expanded!")
        }
        
    AdDuration.didCollapse = {
            print("SwiftyMenu Collapsed!")
        }
        
    AdDuration.didSelectItem = { _, item, index in
            print("\(item) at index: \(index)")
        }
        

        
        // Custom Behavior
    AdDuration.scrollingEnabled = true
    AdDuration.isMultiSelect = false
    AdDuration.hideOptionsWhenSelect = false
        
        // Custom UI
    AdDuration.rowHeight = 35
    AdDuration.listHeight = 300
    AdDuration.borderWidth = 1.0
        
        // Custom Colors
    AdDuration.borderColor = .clear
    AdDuration.itemTextColor = UIColor(red: 0.04, green: 0.07, blue: 0.32, alpha: 1.00)
    AdDuration.placeHolderColor = .black
    AdDuration.menuHeaderBackgroundColor = .white
    AdDuration.rowBackgroundColor = UIColor(red: 0.90, green: 0.91, blue: 0.95, alpha: 1.00)
    AdDuration.separatorColor = .white
        
        // Custom Animation
    AdDuration.expandingAnimationStyle = .spring(level: .low)
    AdDuration.expandingDuration = 0.5
    AdDuration.collapsingAnimationStyle = .linear
    AdDuration.collapsingDuration = 0.5

        

    }


}

extension brokerAppViewController: UITabBarDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell" , for: indexPath) as! appCell
        
        cell.appType.text = self.AppTypes[indexPath.row]
        cell.selectionStyle = .none

        
        return cell
    }
    
    
    
}



extension brokerAppViewController: SwiftyMenuDelegate {
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



//
//  signUpBrokerThirdViewController.swift
//  FaceAqar
//
//  Created by Ebtsam alkhuzai on 28/06/1442 AH.
//

import UIKit
import SwiftyMenu

class signUpBrokerThirdViewController: UIViewController {

    @IBOutlet weak var socialMediaBtnOutlet: UIButton!
    @IBOutlet weak var appBtnOutlet: UIButton!
    @IBOutlet weak var photoBtnOutlet: UIButton!
    @IBOutlet weak var textBtnOutlet: UIButton!
    
    @IBOutlet weak var textView: UIView!
    @IBOutlet weak var socialMediaView: UIView!
    @IBOutlet weak var appView: UIView!
    @IBOutlet weak var photoView: UIView!
    
    @IBOutlet weak var countryMenu: SwiftyMenu!
    @IBOutlet weak var cityMenu: SwiftyMenu!
    @IBOutlet weak var regionMenu: SwiftyMenu!
    
    private let Country: [SwiftyMenuDisplayable] = ["Saudi Arabia"]
    private let Region: [SwiftyMenuDisplayable] = ["Riyadh region", "Medina region", "Hail region", "Qassim region" , "Tabuk region" , "Northern Region" , "Al-Jawf region" , "Eastern Region" , "Al-Baha Region" , "Asir region" , "Jizan region" , "Najran region" ]
    
    private let RiyadhRegion: [SwiftyMenuDisplayable] = ["Riyadh", "Diriyah", "Al-Kharj", "Dawadmi" , "Al Majma'ah" , "Al-Quway'iyah" , "Al-Aflaj" , "Wadi ad-Dawasir" , "Al Zulfi" , " Shaqraa" , "Hotat Bani Tamim" , "Afif" , "Al-Ghat" , "Al Sulayyil" , "Dhurma" , "Al-Muzahmiyya" , "Rimah" , "Thadig" , "Huraymila" ]
    
    private let MakkahRegion: [SwiftyMenuDisplayable] = ["Riyadh", "Diriyah", "Al-Kharj", "Dawadmi" , "Al Majma'ah" , "Al-Quway'iyah" , "Al-Aflaj" , "Wadi ad-Dawasir" , "Al Zulfi" , " Shaqraa" , "Hotat Bani Tamim" , "Afif" , "Al-Ghat" , "Al Sulayyil" , "Dhurma" , "Al-Muzahmiyya" , "Rimah" , "Thadig" , "Huraymila" ]

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpMenu()
        navigationItem.backBarButtonItem = UIBarButtonItem(
            title: "", style: .plain, target: nil, action: nil)

    }

    func setUpMenu(){
        
        self.countryMenu.delegate = self
        self.regionMenu.delegate = self
        self.cityMenu.delegate = self
        
        countryMenu.items = Country
        countryMenu.placeHolderText = "Please Select Item"
        countryMenu.separatorCharacters = " & "
        
        regionMenu.items = Region
        regionMenu.placeHolderText = "Please Select Item"
        regionMenu.separatorCharacters = " & "
        
    
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

                self.cityMenu.items = self.MakkahRegion

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
        
        countryMenu.borderColor = .clear
        countryMenu.itemTextColor = UIColor(red: 0.04, green: 0.07, blue: 0.32, alpha: 1.00)
        countryMenu.placeHolderColor = .black
        countryMenu.menuHeaderBackgroundColor = .white
        countryMenu.rowBackgroundColor = UIColor(red: 0.90, green: 0.91, blue: 0.95, alpha: 1.00)
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
        regionMenu.itemTextColor = UIColor(red: 0.04, green: 0.07, blue: 0.32, alpha: 1.00)
        regionMenu.placeHolderColor = .black
        regionMenu.menuHeaderBackgroundColor = .white
        regionMenu.rowBackgroundColor = UIColor(red: 0.90, green: 0.91, blue: 0.95, alpha: 1.00)
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
        cityMenu.itemTextColor = UIColor(red: 0.04, green: 0.07, blue: 0.32, alpha: 1.00)
        cityMenu.placeHolderColor = .black
        cityMenu.menuHeaderBackgroundColor = .white
        cityMenu.rowBackgroundColor = UIColor(red: 0.90, green: 0.91, blue: 0.95, alpha: 1.00)
        cityMenu.separatorColor = .white
        
        // Custom Animation
        cityMenu.expandingAnimationStyle = .spring(level: .low)
        cityMenu.expandingDuration = 0.5
        cityMenu.collapsingAnimationStyle = .linear
        cityMenu.collapsingDuration = 0.5

    }

    
    
    
    @IBAction func next(_ sender: Any) {
        
        if photoBtnOutlet.tag == 1 {
            let BrokerPhoto = UIStoryboard.init(name: "BrokerPhoto", bundle: Bundle.main).instantiateViewController(withIdentifier: "BrokerPhoto") as? BrokerPhotoViewController
            self.navigationController?.pushViewController(BrokerPhoto!, animated: true)
            
        } else if textBtnOutlet.tag == 1 {
            
            let BrokerText = UIStoryboard.init(name: "BrokerText", bundle: Bundle.main).instantiateViewController(withIdentifier: "BrokerText") as? BrokerTextViewController
            self.navigationController?.pushViewController(BrokerText!, animated: true)
            
            
        } else if appBtnOutlet.tag == 1 {
            
            let brokerApp = UIStoryboard.init(name: "brokerApp", bundle: Bundle.main).instantiateViewController(withIdentifier: "brokerApp") as? brokerAppViewController
            self.navigationController?.pushViewController(brokerApp!, animated: true)
            
            
        } else if socialMediaBtnOutlet.tag == 1 {
            
            let BrokerSocialMedia = UIStoryboard.init(name: "BrokerSocialMedia", bundle: Bundle.main).instantiateViewController(withIdentifier: "BrokerSocialMedia") as? BrokerSocialMediaViewController
            self.navigationController?.pushViewController(BrokerSocialMedia!, animated: true)
            
            
        }

    }
    
    @IBAction func photoBtn(_ sender: Any) {
        
        self.photoBtnOutlet.tag = 1
        self.textBtnOutlet.tag = 0
        self.appBtnOutlet.tag = 0
        self.socialMediaBtnOutlet.tag = 0
        
        self.photoView.backgroundColor = UIColor.gray
        self.appView.backgroundColor = UIColor(red: 0.92, green: 0.92, blue: 0.92, alpha: 1.00)
        self.socialMediaView.backgroundColor = UIColor(red: 0.92, green: 0.92, blue: 0.92, alpha: 1.00)
        self.textView.backgroundColor = UIColor(red: 0.92, green: 0.92, blue: 0.92, alpha: 1.00)
    }
    
     @IBAction func textBtn(_ sender: Any) {
        
        self.photoBtnOutlet.tag = 0
        self.textBtnOutlet.tag = 1
        self.appBtnOutlet.tag = 0
        self.socialMediaBtnOutlet.tag = 0
        
        self.textView.backgroundColor = UIColor.gray
        self.appView.backgroundColor = UIColor(red: 0.92, green: 0.92, blue: 0.92, alpha: 1.00)
        self.socialMediaView.backgroundColor = UIColor(red: 0.92, green: 0.92, blue: 0.92, alpha: 1.00)
        self.photoView.backgroundColor = UIColor(red: 0.92, green: 0.92, blue: 0.92, alpha: 1.00)
        
     }
    

    
    @IBAction func socialMediaBtn(_ sender: Any) {
        
        self.photoBtnOutlet.tag = 0
        self.textBtnOutlet.tag = 0
        self.appBtnOutlet.tag = 0
        self.socialMediaBtnOutlet.tag = 1
        
        self.textView.backgroundColor = UIColor(red: 0.92, green: 0.92, blue: 0.92, alpha: 1.00)
        self.appView.backgroundColor = UIColor(red: 0.92, green: 0.92, blue: 0.92, alpha: 1.00)
        self.socialMediaView.backgroundColor = UIColor.gray
        self.photoView.backgroundColor = UIColor(red: 0.92, green: 0.92, blue: 0.92, alpha: 1.00)
    }
    
    @IBAction func appBtn(_ sender: Any) {
        
        
        self.photoBtnOutlet.tag = 0
        self.textBtnOutlet.tag = 0
        self.appBtnOutlet.tag = 1
        self.socialMediaBtnOutlet.tag = 0
        
        self.textView.backgroundColor = UIColor(red: 0.92, green: 0.92, blue: 0.92, alpha: 1.00)
        self.appView.backgroundColor = UIColor.gray
        self.socialMediaView.backgroundColor = UIColor(red: 0.92, green: 0.92, blue: 0.92, alpha: 1.00)
        self.photoView.backgroundColor = UIColor(red: 0.92, green: 0.92, blue: 0.92, alpha: 1.00)
    }


}



extension signUpBrokerThirdViewController: SwiftyMenuDelegate {
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



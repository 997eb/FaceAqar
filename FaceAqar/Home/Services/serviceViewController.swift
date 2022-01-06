//
//  serviceViewController.swift
//  FaceAqar
//
//  Created by Ebtsam alkhuzai on 11/06/1442 AH.
//

import UIKit

class serviceViewController: UIViewController {

    @IBOutlet weak var whoAreWeView: UIView!
    @IBOutlet weak var LawyersView: UIView!
    @IBOutlet weak var OfficeView: UIView!

    @IBOutlet weak var teamView: UIView!
    @IBOutlet weak var BusinessView: UIView!
    @IBOutlet weak var partnersView: UIView!
    
    @IBOutlet weak var feeView: UIView!
    @IBOutlet weak var PaymentView: UIView!
    @IBOutlet weak var contactview: UIView!
     override func viewDidLoad() {
        super.viewDidLoad()
        setUpOptions()
        
        navigationController?.isNavigationBarHidden = true
       navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
                    navigationController?.navigationBar.shadowImage = UIImage()
      UINavigationBar.appearance().isTranslucent = true
        
        navigationItem.backBarButtonItem = UIBarButtonItem(
            title: "", style: .plain, target: nil, action: nil)
        
    }

    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
       navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
                    navigationController?.navigationBar.shadowImage = UIImage()
      UINavigationBar.appearance().isTranslucent = true
    }
    
    func setUpOptions(){

        
        LawyersView.layer.cornerRadius = 15
        LawyersView.layer.borderWidth = 2
        LawyersView.layer.borderColor = UIColor(red: 0.15, green: 0.18, blue: 0.49, alpha: 1.00).cgColor
        
        whoAreWeView.layer.cornerRadius = 15
        whoAreWeView.layer.borderWidth = 2
        whoAreWeView.layer.borderColor = UIColor(red: 0.15, green: 0.18, blue: 0.49, alpha: 1.00).cgColor
        
        OfficeView.layer.cornerRadius = 15
        OfficeView.layer.borderWidth = 2
        OfficeView.layer.borderColor = UIColor(red: 0.15, green: 0.18, blue: 0.49, alpha: 1.00).cgColor

        teamView.layer.cornerRadius = 15
        teamView.layer.borderWidth = 2
        teamView.layer.borderColor = UIColor(red: 0.15, green: 0.18, blue: 0.49, alpha: 1.00).cgColor

        
        BusinessView.layer.cornerRadius = 15
        BusinessView.layer.borderWidth = 2
        BusinessView.layer.borderColor = UIColor(red: 0.15, green: 0.18, blue: 0.49, alpha: 1.00).cgColor

        partnersView.layer.cornerRadius = 15
        partnersView.layer.borderWidth = 2
        partnersView.layer.borderColor = UIColor(red: 0.15, green: 0.18, blue: 0.49, alpha: 1.00).cgColor
        
        feeView.layer.cornerRadius = 15
        feeView.layer.borderWidth = 2
        feeView.layer.borderColor = UIColor(red: 0.15, green: 0.18, blue: 0.49, alpha: 1.00).cgColor

        
        PaymentView.layer.cornerRadius = 15
        PaymentView.layer.borderWidth = 2
        PaymentView.layer.borderColor = UIColor(red: 0.15, green: 0.18, blue: 0.49, alpha: 1.00).cgColor

        contactview.layer.cornerRadius = 15
        contactview.layer.borderWidth = 2
        contactview.layer.borderColor = UIColor(red: 0.15, green: 0.18, blue: 0.49, alpha: 1.00).cgColor

        

  
    }
    
    @IBAction func contactUs(_ sender: Any) {
        
        let contactUs = UIStoryboard.init(name: "contactUs", bundle: Bundle.main).instantiateViewController(withIdentifier: "contactUs") as? contactUsViewController
        self.navigationController?.pushViewController(contactUs!, animated: true)
    }
    
    @IBAction func paymentMethod(_ sender: Any) {

        let paymentMethod = UIStoryboard.init(name: "paymentMethod", bundle: Bundle.main).instantiateViewController(withIdentifier: "paymentMethod") as? paymentMethodViewController
        self.navigationController?.pushViewController(paymentMethod!, animated: true)
        
    }
    @IBAction func adsFee(_ sender: Any) {

        let adsFee = UIStoryboard.init(name: "adsFee", bundle: Bundle.main).instantiateViewController(withIdentifier: "adsFee") as? adsFeeViewController
        self.navigationController?.pushViewController(adsFee!, animated: true)
    }
    
    @IBAction func ourTeam(_ sender: Any) {
        
        let ourTeam = UIStoryboard.init(name: "ourTeam", bundle: Bundle.main).instantiateViewController(withIdentifier: "ourTeam") as? ourTeamViewController
        self.navigationController?.pushViewController(ourTeam!, animated: true)
           
    }
    @IBAction func whoAreWe(_ sender: Any) {
        
        print("you clicked me !! ")
        let whoAreWe = UIStoryboard.init(name: "whoAreWe", bundle: Bundle.main).instantiateViewController(withIdentifier: "whoAreWe") as? whoAreWeViewController
        self.navigationController?.pushViewController(whoAreWe!, animated: true)

    }
    @IBAction func lawyers(_ sender: Any) {

        let lawyers = UIStoryboard.init(name: "lawyers", bundle: Bundle.main).instantiateViewController(withIdentifier: "lawyers") as? lawyersViewController
        self.navigationController?.pushViewController(lawyers!, animated: true)
        
    }
    @IBAction func ourBussines(_ sender: Any) {
        
        
        let ourBussines = UIStoryboard.init(name: "ourBussines", bundle: Bundle.main).instantiateViewController(withIdentifier: "ourBussines") as? ourBussinessViewController
        self.navigationController?.pushViewController(ourBussines!, animated: true)
        
    }
    @IBAction func ourPartner(_ sender: Any) {
        
        
        let ourPartner = UIStoryboard.init(name: "ourPartner", bundle: Bundle.main).instantiateViewController(withIdentifier: "ourPartner") as? ourPartnerViewController
        self.navigationController?.pushViewController(ourPartner!, animated: true)
        
    }
    
}

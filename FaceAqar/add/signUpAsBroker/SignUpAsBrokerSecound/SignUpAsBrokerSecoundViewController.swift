//
//  SignUpAsBrokerSecoundViewController.swift
//  FaceAqar
//
//  Created by Ebtsam alkhuzai on 28/06/1442 AH.
//

import UIKit

class SignUpAsBrokerSecoundViewController: UIViewController {

    @IBOutlet weak var socialMediaView: UIView!
    @IBOutlet weak var photoView: UIView!
    @IBOutlet weak var textView: UIView!
    @IBOutlet weak var PhotoTableView: UITableView!
    @IBOutlet weak var TextsTableView: UITableView!
    @IBOutlet weak var appView: UIView!
    
    var textTitle = ["Text Color" , "Black Color" , "Red Color"]
    var textPrices = ["Price" , "20 SR" , "30 SR"]
    
    var PhotoTitle = ["Photo Size" , "Size No. (1) " , "Size No. (2)" , "Quarter Page" , "Half Page" , "Entire Page" ]
    var photoPrices = [ "Price" , "200 SR " , "800 SR" , "1200 SR" , "2400 SR" , "4500 SR"]
    
    
 
    
    @IBOutlet weak var socialMediaLbl: UILabel!
    @IBOutlet weak var appLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpShadow()
      /*  let yourBackImage = UIImage(named: "Back.png")
        self.navigationController?.navigationBar.backIndicatorImage = yourBackImage
        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = yourBackImage
        self.navigationController?.navigationBar.backItem?.title = "Custom"*/
        
        navigationItem.backBarButtonItem = UIBarButtonItem(
            title: "", style: .plain, target: nil, action: nil)


      
    }
    
    
    func setUpShadow(){
        photoView.backgroundColor = UIColor.white
        photoView.layer.shadowColor = UIColor.systemGray3.cgColor
        photoView.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        photoView.layer.shadowOpacity = 0.6
        photoView.layer.shadowRadius = 5.0
        
        textView.backgroundColor = UIColor.white
        textView.layer.shadowColor = UIColor.systemGray3.cgColor
        textView.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        textView.layer.shadowOpacity = 0.6
        textView.layer.shadowRadius = 5.0
        
        appView.backgroundColor = UIColor.white
        appView.layer.shadowColor = UIColor.systemGray3.cgColor
        appView.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        appView.layer.shadowOpacity = 0.6
        appView.layer.shadowRadius = 5.0
        
        socialMediaView.backgroundColor = UIColor.white
        socialMediaView.layer.shadowColor = UIColor.systemGray3.cgColor
        socialMediaView.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        socialMediaView.layer.shadowOpacity = 0.6
        socialMediaView.layer.shadowRadius = 5.0
        
        
      //  @IBOutlet weak var socialMediaLbl: UILabel!
      //  @IBOutlet weak var appLbl: UILabel!
        
        socialMediaLbl.layer.addWaghaBorder(edge: .right, color: UIColor.systemGray3, thickness: 1)
        
        appLbl.layer.addWaghaBorder(edge: .right, color: UIColor.systemGray3, thickness: 1)
        
    }

}


extension SignUpAsBrokerSecoundViewController: UITableViewDelegate, UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if tableView == TextsTableView{
            return 3
            
        } else {
                return 5
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        if tableView == TextsTableView{
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell" , for: indexPath) as! textCell
            cell.title.text = textTitle[indexPath.row]
            cell.price.text = textPrices[indexPath.row]
            
            cell.title.layer.addWaghaBorder(edge: .right, color: UIColor.systemGray3, thickness: 1)
            cell.selectionStyle = .none


        return cell
            
            
        }  else {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell" , for: indexPath) as! photoCell
           cell.size.text = PhotoTitle[indexPath.row]
           cell.price.text = photoPrices[indexPath.row]
            cell.size.layer.addWaghaBorder(edge: .right, color: UIColor.systemGray3, thickness: 1)
            cell.selectionStyle = .none

            return cell
            
        }
    }
    
    
    
}


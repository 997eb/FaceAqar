//
//  realStateContractsViewController.swift
//  FaceAqar
//
//  Created by Ebtsam alkhuzai on 21/06/1442 AH.
//

import UIKit

class realStateContractsViewController: UIViewController {
    
    @IBOutlet weak var contractView: UIView!
    var RealEstateRenting = ["Rent - Residential" , "Rent - Commercial"]
    var RealEstateRentingPricing = ["400 SR " , "400 SR " ]

    @IBOutlet weak var secoundView: UIView!
    @IBOutlet weak var oneView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.oneView.layer.cornerRadius = self.oneView.frame.size.width / 2;
        self.secoundView.layer.cornerRadius = self.secoundView.frame.size.width / 2;
        configureShadow()
        
    }
    
    func configureShadow(){
        
        contractView.backgroundColor = UIColor.clear
        contractView.layer.shadowColor = UIColor.lightGray.cgColor
        contractView.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        contractView.layer.shadowOpacity = 0.6
        contractView.layer.shadowRadius = 5.0
    }

}


extension realStateContractsViewController: UITableViewDelegate, UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
 
            return 2

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell" , for: indexPath) as! realEstateContractCell
        
        cell.title.text = RealEstateRenting[indexPath.row]
        cell.price.text = RealEstateRentingPricing[indexPath.row]
        cell.title.layer.addWaghaBorder(edge: .right, color: UIColor.lightGray, thickness: 1)

        
        cell.selectionStyle = .none
        return cell
    }
}

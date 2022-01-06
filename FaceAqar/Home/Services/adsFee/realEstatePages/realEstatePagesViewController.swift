//
//  realEstatePagesViewController.swift
//  FaceAqar
//
//  Created by Ebtsam alkhuzai on 21/06/1442 AH.
//

import UIKit

class realEstatePagesViewController: UIViewController {
    @IBOutlet weak var AuctionsTableView: UITableView!
    
    @IBOutlet weak var offersView: UIView!
    @IBOutlet weak var auctionsView: UIView!
    
    @IBOutlet weak var marketingView: UIView!
    @IBOutlet weak var OffersTableView: UITableView!
    @IBOutlet weak var marketingTableView: UITableView!
    
    var offers = ["Sale" , "Rent" , "Investment" , "Swap" , "Transfership" ]
    var offersPrices = ["900 SR" , "100 SR" , "150 SR" , "900 SR" , "150 SR"]
    
    var auctions = ["7 Days" , "2 Weeks" , "3 Weeks" , "1 Month" , "2 Months" , "3 Months" ]
    var auctionsPrices = ["500 SR " , "1000 SR" , "1500 SR" , "2000 SR" , "4000 SR"  , "6000 SR"]
    
    var marketing = ["In your city" , "In your region" , "In all regions" ]
    var marketingPrice = ["1000 SR " , "2500 SR" , "4000 SR" ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureShadow()
        
        navigationItem.backBarButtonItem = UIBarButtonItem(
            title: "", style: .plain, target: nil, action: nil)

    }


    private func configureShadow() {
        marketingView.backgroundColor = UIColor.clear
        marketingView.layer.shadowColor = UIColor.systemGray3.cgColor
        marketingView.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        marketingView.layer.shadowOpacity = 0.6
        marketingView.layer.shadowRadius = 5.0
    
        offersView.backgroundColor = UIColor.clear
        offersView.layer.shadowColor = UIColor.systemGray3.cgColor
        offersView.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        offersView.layer.shadowOpacity = 0.6
        offersView.layer.shadowRadius = 5.0
        
        auctionsView.backgroundColor = UIColor.clear
        auctionsView.layer.shadowColor = UIColor.systemGray3.cgColor
        auctionsView.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        auctionsView.layer.shadowOpacity = 0.6
        auctionsView.layer.shadowRadius = 5.0

    }
    
}

extension realEstatePagesViewController: UITableViewDelegate, UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if tableView == OffersTableView{
            return 5}
        else if tableView == AuctionsTableView{
                return 4
        } else {
            return 3
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        if tableView == OffersTableView{
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell" , for: indexPath) as! realEstatePageCell
            cell.title.text = offers[indexPath.row]
            cell.price.text = offersPrices[indexPath.row]
            
            cell.title.layer.addWaghaBorder(edge: .right, color: UIColor.lightGray, thickness: 1)

            
            cell.selectionStyle = .none
        return cell
            
            
        }  else if tableView == AuctionsTableView{
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell" , for: indexPath) as! AuctionsCell
            
            cell.title.text = auctions[indexPath.row]
            cell.price.text = auctionsPrices[indexPath.row]
            cell.title.layer.addWaghaBorder(edge: .right, color: UIColor.lightGray, thickness: 1)

            cell.selectionStyle = .none
            return cell
        }
        else {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell" , for: indexPath) as! marketingCell
            
            cell.title.text = marketing[indexPath.row]
            cell.price.text = marketingPrice[indexPath.row]
            cell.title.layer.addWaghaBorder(edge: .right, color: UIColor.lightGray, thickness: 1)

            cell.selectionStyle = .none
            return cell
            
        }
    }
    
    
    
}

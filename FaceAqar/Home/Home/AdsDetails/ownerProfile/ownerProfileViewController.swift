//
//  ownerProfileViewController.swift
//  FaceAqar
//
//  Created by Ebtsam alkhuzai on 19/06/1442 AH.
//

import UIKit

class ownerProfileViewController: UIViewController {
    
    @IBOutlet weak var callView: UIView!
    @IBOutlet weak var messageView: UIView!
    
    let types = [UIImage(named: "all.png"), UIImage(named: "ads.png"), UIImage(named: "request.png") , UIImage(named: "Anctions.png") , UIImage(named: "offices.png")]
    
    let typesNames = ["All","Ads" , "Request" ,"Anctions" , "Offices"]

    override func viewDidLoad() {
        super.viewDidLoad()

        SetUpBorder()
    }

    func SetUpBorder(){
        callView.layer.cornerRadius = 5
        callView.layer.borderWidth = 1
        callView.layer.borderColor = UIColor(red: 0.13, green: 0.55, blue: 1.00, alpha: 1.00).cgColor
        
        messageView.layer.cornerRadius = 5
        messageView.layer.borderWidth = 1
        messageView.layer.borderColor = UIColor(red: 0.12, green: 0.75, blue: 0.38, alpha: 1.00).cgColor
    }

}

extension ownerProfileViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return  2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        

    let cell = tableView.dequeueReusableCell(withIdentifier:"cell", for: indexPath) as! ownerAdsCell
    return cell

    
}

}

extension ownerProfileViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return types.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier:"cell", for: indexPath) as! TypeCell
        
        
        cell.TypeImage.image = types[indexPath.row]
        cell.typeLbl.text = typesNames[indexPath.row]
        //cell.selectionStyle = .none

        return cell
  
    
    
}
    

}

//
//  homeAsListViewController.swift
//  FaceAqar
//
//  Created by Ebtsam alkhuzai on 13/06/1442 AH.
//

import UIKit

class homeAsListViewController: UIViewController {
    
    @IBOutlet weak var optionTable: UITableView!
    @IBOutlet weak var listTable: UITableView!
    let options = [ UIImage(named: "favorate.png") , UIImage(named: "mapM.png") ]
    
    let types = [UIImage(named: "all.png"), UIImage(named: "ads.png"), UIImage(named: "request.png") , UIImage(named: "Anctions.png") , UIImage(named: "offices.png")]
    
    let typesNames = ["All","Ads" , "Request" ,"Anctions" , "Offices"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.isNavigationBarHidden = true
                 navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
                    navigationController?.navigationBar.shadowImage = UIImage()
                 UINavigationBar.appearance().isTranslucent = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
                 navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
                    navigationController?.navigationBar.shadowImage = UIImage()
                 UINavigationBar.appearance().isTranslucent = true
    }


}

extension homeAsListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return  2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if tableView == optionTable{
        let cell = tableView.dequeueReusableCell(withIdentifier:"cell", for: indexPath) as! optionsCell
        cell.optionImg.image = options[indexPath.row]
        cell.selectionStyle = .none

        return cell
    } else {
    let cell = tableView.dequeueReusableCell(withIdentifier:"cell", for: indexPath) as! homeAsListCell
        cell.selectionStyle = .none

    return cell
    }
    
}
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if optionTable == tableView{

         if indexPath.row == 0 {
           let favorate = UIStoryboard.init(name: "favorate", bundle: Bundle.main).instantiateViewController(withIdentifier: "favorate") as? FavorateViewController
           self.navigationController?.pushViewController(favorate!, animated: true)
           }
       
       else if indexPath.row == 1 {

        let home = UIStoryboard.init(name: "home", bundle: Bundle.main).instantiateViewController(withIdentifier: "home") as? homeViewController
          self.navigationController?.pushViewController(home!, animated: true)
            }

        }else {
            
            let details = UIStoryboard.init(name: "adsDetails", bundle: Bundle.main).instantiateViewController(withIdentifier: "adsDetails") as? adsDetailsViewController
            self.navigationController?.pushViewController(details!, animated: true)
            
        }
        
    }
}
extension homeAsListViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return types.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier:"cell", for: indexPath) as! TypeCell
        
        
        cell.TypeImage.image = types[indexPath.row]
        cell.typeLbl.text = typesNames[indexPath.row]
            //   cell.selectionStyle = .none

        return cell
  
    
    
}
    

}

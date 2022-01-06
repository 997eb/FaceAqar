//
//  homeViewController.swift
//  FaceAqar
//
//  Created by Ebtsam alkhuzai on 11/06/1442 AH.
//

import UIKit
import GoogleMaps
import GooglePlaces
import MapKit


class homeViewController: UIViewController , UITabBarControllerDelegate{

    @IBOutlet weak var subCateCollectionView: UICollectionView!
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    @IBOutlet weak var typeCollectionView: UICollectionView!
    
    @IBOutlet weak var regiunBtn: UIButton!
    @IBOutlet weak var noOfAds: UIView!
    @IBOutlet weak var browseBroker: UIButton!
    
    let options = [UIImage(named: "satellite.png"), UIImage(named: "favorate.png") , UIImage(named: "list.png") , UIImage(named: "currentLocation.png")]
    
    let types = [UIImage(named: "all.png"), UIImage(named: "ads.png"), UIImage(named: "request.png") , UIImage(named: "Anctions.png") , UIImage(named: "offices.png")]
    
    let typesNames = ["All","Ads" , "Request" ,"Anctions" , "Offices"]
    
    let categoryName = ["All","Sell","Rent","Investment","Swap","Transfership" , "Other" ]
    let third = ["All" , "Sell" , "Rent"]
    
    @IBOutlet weak var MapViewS: UIView!
    var mapView: GMSMapView!
    
    override func viewWillAppear(_ animated: Bool) {
        
     navigationController?.isNavigationBarHidden = true
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
           navigationController?.navigationBar.shadowImage = UIImage()
        UINavigationBar.appearance().isTranslucent = false

    }

   
    override func viewDidLoad() {
        super.viewDidLoad()

    self.tabBarController?.delegate = UIApplication.shared.delegate as? UITabBarControllerDelegate

      self.navigationController?.isNavigationBarHidden = true
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
           navigationController?.navigationBar.shadowImage = UIImage()
        UINavigationBar.appearance().isTranslucent = false
        
        noOfAds.layer.borderWidth = 0.5
        noOfAds.layer.borderColor = UIColor(red: 0.11, green: 0.14, blue: 0.40, alpha: 1.00).cgColor
        
        GMSServices.provideAPIKey("AIzaSyDgg4D567XfdUCA_kVrL0AuTV-xbZ4KvW0")
        
        let camera = GMSCameraPosition.camera(withLatitude: -33.86, longitude: 151.20, zoom: 6.0)
        self.mapView = GMSMapView.map(withFrame:view.frame, camera: camera)

        MapViewS.addSubview(mapView)
       
              // Creates a marker in the center of the map.
              let marker = GMSMarker()
              marker.position = CLLocationCoordinate2D(latitude: -33.86, longitude: 151.20)
              marker.title = "Sydney"
              marker.snippet = "Australia"
              marker.map = mapView
        
  

        }
        
        
    }
    


extension homeViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier:"cell", for: indexPath) as! optionsCell
        cell.optionImg.image = options[indexPath.row]
        cell.selectionStyle = .none

        return cell
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            if self.mapView.mapType == .normal {
                self.mapView.mapType = .satellite
            }else {
                self.mapView.mapType = .normal
            }
        } else if indexPath.row == 1 {
            let favorate = UIStoryboard.init(name: "favorate", bundle: Bundle.main).instantiateViewController(withIdentifier: "favorate") as? FavorateViewController
            self.navigationController?.pushViewController(favorate!, animated: true)
            }
        
        else if indexPath.row == 2 {
           let home = UIStoryboard.init(name: "homeAsList", bundle: Bundle.main).instantiateViewController(withIdentifier: "homeAsList") as? homeAsListViewController
           self.navigationController?.pushViewController(home!, animated: true)
           }
    }
}



extension homeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
 func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       if collectionView == typeCollectionView {
        return types.count
    } else if collectionView == categoryCollectionView{
        return categoryName.count
    } else{
      return third.count

    }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        if collectionView == self.typeCollectionView {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier:"cell", for: indexPath) as! TypeCell
        
        cell.TypeImage.image = types[indexPath.row]
        cell.typeLbl.text = typesNames[indexPath.row]

        return cell
            
            
        } else if collectionView == self.categoryCollectionView {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier:"categoryCell", for: indexPath) as! categoryCell
            
            cell.categoryView.layer.cornerRadius = 5
            cell.categoryView.backgroundColor = UIColor.systemGray5
            cell.categoryName.text = categoryName[indexPath.row]
            /*
            if indexPath.row == 0 {
                cell.categoryView.backgroundColor = UIColor.systemGray2
            }*/
            return cell
            
        } else {
            
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier:"subCategoryCell", for: indexPath) as! subCategoryCell
            
         
            cell.subCateView.layer.cornerRadius = 5
            cell.subCateView.backgroundColor = UIColor.systemGray5
            cell.subCateLbl.text = third[indexPath.row]
           /* if indexPath.row == 0 {
                cell.subCateView.backgroundColor = UIColor.systemGray2
            }*/

        return cell
        
        }

    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
 
        if collectionView == self.typeCollectionView {
            let cell = collectionView.cellForItem(at: indexPath) as! TypeCell

                 cell.typeView.backgroundColor = UIColor.systemGray
                 cell.typeLbl.textColor = UIColor.white
            
            categoryCollectionView.isHidden = false

    } else if collectionView == self.categoryCollectionView {
        
        let cell = collectionView.cellForItem(at: indexPath) as! categoryCell
        cell.categoryView.backgroundColor = UIColor.systemGray2

        subCateCollectionView.isHidden = false
    
        
}
    else {
        let cell = collectionView.cellForItem(at: indexPath) as! subCategoryCell
        cell.subCateView.backgroundColor = UIColor.systemGray2

    }
    }

    
}

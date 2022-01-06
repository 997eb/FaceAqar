//
//  adsDetailsViewController.swift
//  FaceAqar
//
//  Created by Ebtsam alkhuzai on 18/06/1442 AH.
//

import UIKit
import GoogleMaps
import GooglePlaces
import MapKit

class adsDetailsViewController: UIViewController {

    @IBOutlet weak var similarAdsCheck: UIButton!
    @IBOutlet weak var callView: UIView!
    @IBOutlet weak var messageView: UIView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var imageSliderCollectionView: UICollectionView!
    var mapView: GMSMapView!
    
    @IBOutlet weak var mapViewS: UIView!
    var timer: Timer?
    
    var imageSlideShow = [UIImage(named: "sliderImg.png")! , UIImage(named:"sliderImg.png")!, UIImage(named:"sliderImg.png")!]
    
    var detailsNames = ["Price" , "Type of Piece" , "Space" , "Frontispiece" ,"Street Width" , "No. of Rooms" , "No. of Apartments" , "No. of Lounges" , "No. of Bathrooms" , "Age of Property" , "Familes" ,"Internal staircase" , "Driver Room" , "Servant Room" , "Elevator" , "Car Entrance" ,"No. of Ads","No. Views" , "Last update before" ]
    
    var details = ["1,000,000 SR." , "Residential" , "750m2" , "3 Streets" ,"10 m" , "5" , "4" , "+5" , "4" , "10 Years" , "" ,"" , "" , "" , "" , "" ,"1086363","N655" , "4 days" ]
    
    var currentCellIndex = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.isNavigationBarHidden = false
        imageSliderCollectionView.delegate = self
        imageSliderCollectionView.dataSource = self
        startTimer()
        pageControl.numberOfPages = imageSlideShow.count
        SetUpBorder()
        
        GMSServices.provideAPIKey("AIzaSyDgg4D567XfdUCA_kVrL0AuTV-xbZ4KvW0")
        
        let camera = GMSCameraPosition.camera(withLatitude: -33.86, longitude: 151.20, zoom: 6.0)
        self.mapView = GMSMapView.map(withFrame:self.mapViewS.bounds, camera: camera)
        mapView.frame = CGRect(x: 0, y: 0, width: self.mapViewS.frame.size.width , height: self.mapViewS.frame.size.height)


        self.mapViewS.addSubview(mapView)
       
              // Creates a marker in the center of the map.
              let marker = GMSMarker()
              marker.position = CLLocationCoordinate2D(latitude: -33.86, longitude: 151.20)
              marker.title = "Sydney"
              marker.snippet = "Australia"
              marker.map = mapView
    }

    func SetUpBorder(){
        callView.layer.cornerRadius = 5
        callView.layer.borderWidth = 1
        callView.layer.borderColor = UIColor(red: 0.13, green: 0.55, blue: 1.00, alpha: 1.00).cgColor
        
        messageView.layer.cornerRadius = 5
        messageView.layer.borderWidth = 1
        messageView.layer.borderColor = UIColor(red: 0.12, green: 0.75, blue: 0.38, alpha: 1.00).cgColor
    }
    
    
    @IBAction func report(_ sender: Any) {
       let report = UIStoryboard.init(name: "report", bundle: Bundle.main).instantiateViewController(withIdentifier: "report") as? reportViewController
      //  report!.modalPresentationStyle = .overCurrentContext
        present(report!, animated: true, completion: nil)
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval:  2.5, target: self, selector: #selector(moveToNextIndex), userInfo: nil, repeats: true)
    }
    
    @objc func moveToNextIndex() {
        
        if currentCellIndex < imageSlideShow.count - 1 {
            currentCellIndex += 1
        }else {
            currentCellIndex = 0
        }
        imageSliderCollectionView.scrollToItem(at: IndexPath(item: currentCellIndex, section: 0), at: .centeredHorizontally, animated: true)
        pageControl.currentPage = currentCellIndex
        
    }
    
    
    @IBAction func openOwnerProfile(_ sender: Any) {
        
        let ownerProfile = UIStoryboard.init(name: "ownerProfile", bundle: Bundle.main).instantiateViewController(withIdentifier: "ownerProfile") as? ownerProfileViewController
        self.navigationController?.pushViewController(ownerProfile!, animated: true)
        
    }
    
    @IBAction func similarAdsCheckbox(_ sender: Any) {
        
        if similarAdsCheck.tag == 0 {
        similarAdsCheck.setImage(UIImage(named:"checkDetails2.png"), for: .normal)
            similarAdsCheck.tag = 1
        
        } else {
            similarAdsCheck.setImage(UIImage(named:"checkDetails.png"), for: .normal)
                similarAdsCheck.tag = 0
        }
    }
   
}


extension adsDetailsViewController: UICollectionViewDelegate, UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        imageSlideShow.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier:"cell", for: indexPath) as! imageSliderCell
        
        cell.adsImg.image = imageSlideShow[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    
    
}

extension adsDetailsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return detailsNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell" , for: indexPath) as! detailsCell
        cell.detailsLbl.text = detailsNames[indexPath.row]
        cell.details.text = details[indexPath.row]
        cell.selectionStyle = .none

        return cell
    }
    
    
}

//
//  FavorateViewController.swift
//  FaceAqar
//
//  Created by Ebtsam alkhuzai on 13/06/1442 AH.
//

import UIKit

class FavorateViewController: UIViewController {

    @IBOutlet weak var cancel: UIButton!
    @IBOutlet weak var openOptionVIEW: UIView!
    @IBOutlet weak var optionsView: UIView!
    @IBOutlet weak var profileImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
           navigationController?.navigationBar.shadowImage = UIImage()
    
        UINavigationBar.appearance().isTranslucent = true
        self.navigationController?.isNavigationBarHidden = false

        
        
        //optionsView.addShadow(shadowColor: .clear, offSet: .zero, opacity: 100, shadowRadius: 5.0, cornerRadius: 10, corners: [.topLeft, .topRight], fillColor: .systemGray6)
        optionsView.roundCorners(corners: [.topLeft, .topRight], radius: 30.0)
        cancel.layer.cornerRadius = 5
        cancel.layer.borderColor = UIColor.red.cgColor
        cancel.layer.borderWidth = 0.5

        setUpImg()

    }

    func setUpImg(){
        profileImg.layer.borderWidth = 2
        profileImg.layer.masksToBounds = false
        profileImg.layer.borderColor =  UIColor(red: 0.11, green: 0.14, blue: 0.40, alpha: 1.00).cgColor
        profileImg.layer.cornerRadius = profileImg.frame.height/2
        profileImg.clipsToBounds = true
        
        openOptionVIEW.layer.cornerRadius = openOptionVIEW.frame.height/2
        openOptionVIEW.clipsToBounds = true
        openOptionVIEW.layer.masksToBounds = false

    }
    @IBAction func openOptions(_ sender: Any) {
        
        if  optionsView.isHidden == false{
            optionsView.isHidden = true
        } else {
            optionsView.isHidden = false

        }
    }
    
    
    @IBAction func similarAds(_ sender: Any) {
        cancel.isHidden = false
    }
    
    @IBAction func favorateOpen(_ sender: Any) {
        cancel.isHidden = true
    }
    
}

extension FavorateViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 2
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:"cell", for: indexPath) as! favorateCell
        cell.selectionStyle = .none

        return cell 

    }
    
    
    
}

extension UIView {
    
    func addShadow(shadowColor: UIColor, offSet: CGSize, opacity: Float, shadowRadius: CGFloat, cornerRadius: CGFloat, corners: UIRectCorner, fillColor: UIColor = .white) {
        
        let shadowLayer = CAShapeLayer()
        let size = CGSize(width: cornerRadius, height: cornerRadius)
        let cgPath = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: size).cgPath //1
        shadowLayer.path = cgPath //2
        shadowLayer.fillColor = fillColor.cgColor //3
        shadowLayer.shadowColor = shadowColor.cgColor //4
        shadowLayer.shadowPath = cgPath
        shadowLayer.shadowOffset = offSet //5
        shadowLayer.shadowOpacity = opacity
        shadowLayer.shadowRadius = shadowRadius
        self.layer.addSublayer(shadowLayer)
    }
    
    func roundCorners(corners: UIRectCorner, radius: CGFloat) {
          let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
          let mask = CAShapeLayer()
          mask.path = path.cgPath
          layer.mask = mask
      }
}

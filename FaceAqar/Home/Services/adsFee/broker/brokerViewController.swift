//
//  brokerViewController.swift
//  FaceAqar
//
//  Created by Ebtsam alkhuzai on 21/06/1442 AH.
//

import UIKit

class brokerViewController: UIViewController {

    @IBOutlet weak var PhotoTableView: UITableView!
    @IBOutlet weak var TextsTableView: UITableView!
    
    @IBOutlet weak var photoView: UIView!
    @IBOutlet weak var textView: UIView!
   @IBOutlet weak var socialLbl: UILabel!
   @IBOutlet weak var appLbl: UILabel!
    @IBOutlet weak var appView: UIView!
    @IBOutlet weak var socialView: UIView!
    
    var textTitle = ["Text Color" , "Black Color" , "Red Color"]
    var textPrices = ["Price" , "20 SR" , "30 SR"]
    
    var PhotoTitle = ["Photo Size" , "Size No. (1) " , "Size No. (2)" , "Quarter Page" , "Half Page" , "Entire Page" ]
    var photoPrices = [ "Price" , "200 SR " , "800 SR" , "1200 SR" , "2400 SR" , "4500 SR"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureShadow()
        


    }

    private func configureShadow() {
        textView.backgroundColor = UIColor.clear
        textView.layer.shadowColor = UIColor.lightGray.cgColor
        textView.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        textView.layer.shadowOpacity = 0.6
        textView.layer.shadowRadius = 5.0
        
        photoView.backgroundColor = UIColor.clear
        photoView.layer.shadowColor = UIColor.lightGray.cgColor
        photoView.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        photoView.layer.shadowOpacity = 0.6
        photoView.layer.shadowRadius = 5.0
        
        appView.backgroundColor = UIColor.white
        appView.layer.shadowColor = UIColor.lightGray.cgColor
        appView.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        appView.layer.shadowOpacity = 0.6
        appView.layer.shadowRadius = 5.0
        
        socialView.backgroundColor = UIColor.white
        socialView.layer.shadowColor = UIColor.lightGray.cgColor
        socialView.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        socialView.layer.shadowOpacity = 0.6
        socialView.layer.shadowRadius = 5.0
   
    appLbl.layer.addWaghaBorder(edge: .right, color: UIColor.lightGray, thickness: 1)
    socialLbl.layer.addWaghaBorder(edge: .right, color: UIColor.lightGray, thickness: 1)


    }
}


extension brokerViewController: UITableViewDelegate, UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if tableView == TextsTableView{
            return 3
            
        } else {
                return 5
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        if tableView == TextsTableView{
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell" , for: indexPath) as! textBrokerCell
        
            cell.proce.text = textTitle[indexPath.row]
            cell.title.text = textPrices[indexPath.row]
            cell.title.layer.addWaghaBorder(edge: .right, color: UIColor.systemGray3, thickness: 1)
            cell.selectionStyle = .none

        return cell
        }  else {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell" , for: indexPath) as! photoBrokerCell
            
            cell.price.text = photoPrices[indexPath.row]
            cell.size.text = PhotoTitle[indexPath.row]
            cell.size.layer.addWaghaBorder(edge: .right, color: UIColor.lightGray, thickness: 1)

            cell.selectionStyle = .none
            return cell
            
        }
    }
    
    
    
}


extension CALayer {
func addWaghaBorder(edge: UIRectEdge, color: UIColor, thickness: CGFloat) {
let border = CALayer()
switch edge {
case UIRectEdge.top:
border.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: 1)
break
case UIRectEdge.bottom:
border.frame = CGRect(x: 0, y: self.frame.height - 1, width: self.frame.width, height: 1)
break
case UIRectEdge.left:
border.frame = CGRect(x: 0, y: 0, width: 1, height: self.frame.height)
break
case UIRectEdge.right:
border.frame = CGRect(x: self.frame.width - 1, y: 0, width: 1, height: self.frame.height)
break
default:
break
}
border.backgroundColor = color.cgColor;
self.addSublayer(border)
}
}

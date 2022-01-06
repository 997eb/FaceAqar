//
//  messagesViewController.swift
//  FaceAqar
//
//  Created by Ebtsam alkhuzai on 11/06/1442 AH.
//

import UIKit


class messagesMasterViewController: UIViewController {
    @IBOutlet weak var searchTF: UITextField!
    @IBOutlet weak var messagesContainer: UIView!
    @IBOutlet weak var searchView: UIView!
    @IBOutlet weak var faceAqarContainer: UIView!
    @IBOutlet weak var tfView: UIView!

    
    @IBOutlet weak var segmentControlO: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.searchView.layer.cornerRadius = self.searchView.frame.size.width / 2;
        tfView.layer.cornerRadius = 20
        
        messagesContainer.alpha = 1.0
        faceAqarContainer.alpha = 0.0

        

    }

    @IBAction func openList(_ sender: Any) {

         print("Noooooooo :(" )

    
    }
    
    @IBAction func segmentControl(_ sender: UISegmentedControl) {
        
        if (sender.selectedSegmentIndex == 0) {
        UIView.animate(withDuration: 0.5, animations: {
          
            self.messagesContainer.alpha = 1.0
            self.faceAqarContainer.alpha = 0.0
            
        })
        } else{
            
            UIView.animate(withDuration: 0.5, animations: {
                
            self.messagesContainer.alpha = 0.0
            self.faceAqarContainer.alpha = 1.0
              
            })
            
        }
    }


}

extension UISegmentedControl{
    func removeBorderFollowers(){
        let backgroundImage = UIImage.getColoredRectImageWith(color: UIColor.white.cgColor, andSize: self.bounds.size)
        self.setBackgroundImage(backgroundImage, for: .normal, barMetrics: .default)
        self.setBackgroundImage(backgroundImage, for: .selected, barMetrics: .default)
        self.setBackgroundImage(backgroundImage, for: .highlighted, barMetrics: .default)

        let deviderImage = UIImage.getColoredRectImageWith(color: UIColor.white.cgColor, andSize: CGSize(width: 1.0, height: self.bounds.size.height))
        self.setDividerImage(deviderImage, forLeftSegmentState: .selected, rightSegmentState: .normal, barMetrics: .default)
        
        let font2 = UIFont.systemFont(ofSize: 19)
        self.setTitleTextAttributes([NSAttributedString.Key.font: font2 , NSAttributedString.Key.foregroundColor: UIColor.darkGray], for: .selected)
        
        let font = UIFont.systemFont(ofSize:16)
        self.setTitleTextAttributes([NSAttributedString.Key.font: font , NSAttributedString.Key.foregroundColor: UIColor.lightGray], for: .normal)
    }
}
    extension UIImage{

        class func getColoredRectImageWith(color: CGColor, andSize size: CGSize) -> UIImage{
            UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
            let graphicsContext = UIGraphicsGetCurrentContext()
            graphicsContext?.setFillColor(color)
            let rectangle = CGRect(x: 0.0, y: 0.0, width: size.width, height: size.height)
            graphicsContext?.fill(rectangle)
            let rectangleImage = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext()
            return rectangleImage!
        }
    }

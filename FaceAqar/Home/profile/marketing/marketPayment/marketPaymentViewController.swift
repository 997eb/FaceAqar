//
//  marketPaymentViewController.swift
//  FaceAqar
//
//  Created by Ebtsam alkhuzai on 13/07/1442 AH.
//

import UIKit

class marketPaymentViewController: UIViewController {

    @IBOutlet weak var payLaterBtn: UIButton!
    @IBOutlet weak var publishBtn: UIButton!
    @IBOutlet weak var selectedView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.isNavigationBarHidden = false
        navigationItem.backBarButtonItem = UIBarButtonItem(
            title: "", style: .plain, target: nil, action: nil)
        
        self.navigationController?.navigationBar.setBackgroundImage(nil, for: .default)
             self.navigationController?.navigationBar.shadowImage = nil
             self.navigationController?.navigationBar.isTranslucent = false
        
        selectedView.backgroundColor = UIColor.white
        selectedView.layer.shadowColor = UIColor.lightGray.cgColor
        selectedView.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        selectedView.layer.shadowOpacity = 0.6
        selectedView.layer.shadowRadius = 5.0
        selectedView.layer.borderWidth = 2
        selectedView.layer.borderColor = UIColor.systemGreen.cgColor
        
        publishBtn.layer.cornerRadius = 10
        payLaterBtn.layer.cornerRadius = 10
        payLaterBtn.layer.borderWidth = 2
        payLaterBtn.layer.borderColor = UIColor(red: 0.01, green: 0.04, blue: 0.22, alpha: 1.00).cgColor

        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
      self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
              self.navigationController?.navigationBar.shadowImage = UIImage()
              self.navigationController?.navigationBar.isTranslucent = true
    }

}
 
extension marketPaymentViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell" , for: indexPath) as! marketPaymentCell
        cell.separatorInset = .zero
        return cell
    }
    
    
}

//
//  selectAdsViewController.swift
//  FaceAqar
//
//  Created by Ebtsam alkhuzai on 13/07/1442 AH.
//

import UIKit

class selectAdsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.backBarButtonItem = UIBarButtonItem(
            title: "", style: .plain, target: nil, action: nil)
    }


}



extension selectAdsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell" , for: indexPath) as! selectAdsCell
        
     cell.selectionStyle = .none

        return cell
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
        let marketPayment = UIStoryboard.init(name: "marketPayment", bundle: Bundle.main).instantiateViewController(withIdentifier: "marketPayment") as? marketPaymentViewController
        self.navigationController?.pushViewController(marketPayment!, animated: true)
       
        
    }
}

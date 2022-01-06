//
//  addPropertyStepTwoViewController.swift
//  FaceAqar
//
//  Created by Ebtsam alkhuzai on 26/06/1442 AH.
//

import UIKit

class addPropertyStepTwoViewController:UIViewController {
    @IBOutlet weak var AuctionsTableView: UITableView!
    @IBOutlet weak var OffersTableView: UITableView!
    @IBOutlet weak var marketingTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

    }


}

extension addPropertyStepTwoViewController: UITableViewDelegate, UITableViewDataSource{
    
    
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
        
            cell.selectionStyle = .none

        return cell
        }  else if tableView == AuctionsTableView{
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell" , for: indexPath) as! AuctionsCell
            cell.selectionStyle = .none

            return cell
        }
        else {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell" , for: indexPath) as! marketingCell
            cell.selectionStyle = .none

            return cell
            
        }
    }
    
    
    
}

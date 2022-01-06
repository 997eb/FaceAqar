//
//  bankTransferViewController.swift
//  FaceAqar
//
//  Created by Ebtsam alkhuzai on 22/06/1442 AH.
//

import UIKit

class bankTransferViewController: UIViewController {

    
    var bank = [UIImage(named: "albilad.png") , UIImage(named: "alriyadh.png") , UIImage(named: "alrajhi.png") , UIImage(named: "AlAhli.png")]
    override func viewDidLoad() {
        super.viewDidLoad()

    
    }


}


extension bankTransferViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:"cell", for: indexPath) as! bankTransferCell
        
        cell.bankImage.image = bank[indexPath.row]
        cell.selectionStyle = .none

        return cell

    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
        
    }

    
}

//
//  lawyersViewController.swift
//  FaceAqar
//
//  Created by Ebtsam alkhuzai on 19/06/1442 AH.
//

import UIKit

class lawyersViewController: UIViewController {
    
    
    var info = ["Full Name" , "Service Type" , "Mobile Number" , "Fax" , "Email" ]
    var details = ["Mohammed altamimi" , "Lorem ipsum" , "+96650XXXXXXX" , "Lorem ipsum" , "Lawyer@gmail.com" ]

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.backBarButtonItem = UIBarButtonItem(
            title: "", style: .plain, target: nil, action: nil)
        
        self.navigationController?.isNavigationBarHidden = false
    }


}


extension lawyersViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:"cell", for: indexPath) as! lawyersCell
        
        cell.info.text = info[indexPath.row]
        cell.detailed.text = details[indexPath.row]
        cell.selectionStyle = .none
        return cell
        
    }
    
    
}

//
//  SideMenuViewController.swift
//  FaceAqar
//
//  Created by Ebtsam alkhuzai on 19/07/1442 AH.
//

import UIKit

class SideMenuViewController: UIViewController {

    @IBOutlet weak var sideMenuView: UIView!
    let icons = [UIImage(named: "terms.png") , UIImage(named: "lang.png") , UIImage(named: "siteManual.png") , UIImage(named: "shareBlue.png") ]
    let itemsList = ["Terms and condition " , "Languages " , "Site User Manual " , "Share"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.separatorStyle = UITableViewCell.SeparatorStyle.none

        sideMenuView.roundCorners(corners: [ .topRight , .bottomRight], radius: 200)

    }

    @IBOutlet weak var tableview: UITableView!
    
}


extension SideMenuViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return icons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell" , for: indexPath) as! sideMenuCell
        cell.selectionStyle = .none
        cell.sideMenuIcon.image = icons[indexPath.row]
        cell.sideMenuLabel.text = itemsList[indexPath.row]
        cell.sideMenuLabel.tintColor = UIColor(red: 0.11, green: 0.14, blue: 0.40, alpha: 1.00)

        return cell
    }
    
    
}

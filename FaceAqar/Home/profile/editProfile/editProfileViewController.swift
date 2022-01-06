//
//  editProfileViewController.swift
//  FaceAqar
//
//  Created by Ebtsam alkhuzai on 27/07/1442 AH.
//

import UIKit

class editProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        editProfileOutlet.layer.borderColor = UIColor.red.cgColor
        editProfileOutlet.layer.borderWidth = 1
        editProfileOutlet.layer.cornerRadius = 10
        navigationItem.backBarButtonItem = UIBarButtonItem(
            title: "", style: .plain, target: nil, action: nil)

    }

    @IBOutlet weak var editProfileOutlet: UIButton!
}

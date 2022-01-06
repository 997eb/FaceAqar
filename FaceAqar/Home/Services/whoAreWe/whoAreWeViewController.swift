//
//  whoAreWeViewController.swift
//  FaceAqar
//
//  Created by Ebtsam alkhuzai on 19/06/1442 AH.
//

import UIKit

class whoAreWeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.backBarButtonItem = UIBarButtonItem(
            title: "", style: .plain, target: nil, action: nil)
        self.navigationController?.isNavigationBarHidden = false
    }

}

//
//  SignUpAsBrokerViewController.swift
//  FaceAqar
//
//  Created by Ebtsam alkhuzai on 26/06/1442 AH.
//

import UIKit

class SignUpAsBrokerViewController: UIViewController {
    @IBOutlet weak var TaCSecound: UITextView!
    @IBOutlet weak var TaCone: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "X", style: .done, target: self, action: #selector(addTapped))
        
        TaCone.text = "1. Lorem ipsum dolor sit amet, consetetur sadipscing elitr.sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat,\n 2. sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus \n3. est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr."

        TaCone.font = .systemFont(ofSize: 18)

        TaCSecound.text = "1. Lorem ipsum dolor sit amet, consetetur sadipscing elitr.sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat,\n 2. sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus \n3. est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr."

        TaCSecound.font = .systemFont(ofSize: 18)
        
        navigationItem.backBarButtonItem = UIBarButtonItem(
            title: "", style: .plain, target: nil, action: nil)

    }
    @IBOutlet weak var agreeB: UIButton!
    @IBOutlet weak var agreeA: UIButton!
    
    @IBOutlet weak var readMoreBtn: UIButton!
    @IBAction func readMore(_ sender: Any) {
        
        readMoreBtn.isHidden = true
        TaCSecound.isHidden = false
        agreeB.isHidden = true
        agreeA.isHidden = false

        
        
    }
    
    @objc func addTapped(){
         print("clicked")
        dismiss(animated: true, completion: nil)
    }

}

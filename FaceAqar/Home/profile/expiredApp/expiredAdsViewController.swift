//
//  expiredAdsViewController.swift
//  FaceAqar
//
//  Created by Ebtsam alkhuzai on 12/07/1442 AH.
//

import UIKit

class expiredAdsViewController: UIViewController , UITableViewDataSource, UITableViewDelegate {
    
    
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
                return 3
      
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell" , for: indexPath) as! expiredAdsCell
        
        if indexPath.row == 2{
            
        cell.brokerView.isHidden = false
        cell.adsView.isHidden = true
            
        }else {
            
        cell.brokerView.isHidden = true
        cell.adsView.isHidden = false
        }
        
        if self.isEditing {
            self.tableView.selectRow(at: indexPath, animated: false, scrollPosition: UITableView.ScrollPosition.none)
        }
        
        let bgColorView = UIView()
           bgColorView.backgroundColor = UIColor.white
           cell.selectedBackgroundView = bgColorView

        return cell
    }


    private func handleMoveToTrash() {
        print("Moved to trash")
    }

    private func handleMoveToReport() {
        print("Moved to Report")
    }
    

    
    func tableView(_ tableView: UITableView,
                   leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {

        // Archive action
        let Report = UIContextualAction(style: .normal,
                                         title: "") { [weak self] (action, view, completionHandler) in
                                            self?.handleMoveToReport()
                                            completionHandler(true)
        }
        Report.image = UIImage(named: "report2.png")
        Report.backgroundColor = .systemYellow

        // Trash action
        let trash = UIContextualAction(style: .destructive,
                                       title: "") { [weak self] (action, view, completionHandler) in
                                        self?.handleMoveToTrash()
                                        completionHandler(true)
        }
        trash.image = UIImage(named: "trash.png")
        trash.backgroundColor = .systemRed



        let configuration = UISwipeActionsConfiguration(actions: [Report, trash])
//        configuration.performsFirstActionWithFullSwipe = false

        return configuration
    }
    


}

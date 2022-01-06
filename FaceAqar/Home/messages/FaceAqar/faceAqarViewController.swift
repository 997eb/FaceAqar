//
//  faceAqarViewController.swift
//  FaceAqar
//
//  Created by Ebtsam alkhuzai on 09/07/1442 AH.
//

import UIKit

class faceAqarViewController: UIViewController , UITableViewDataSource, UITableViewDelegate {
    
    let toDos = ["Go biking", "Italian Groceries", "Fix heating", "Install dimmer"]
    var opened: Bool = false
    
    var images = [UIImage(named: "broker-1.png") , UIImage(named: "faceAqarLogo2.png") , UIImage(named: "request.png") , UIImage(named: "Anctions.png")]


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
                return toDos.count
      
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell" , for: indexPath) as! faceAqarCell
        cell.lbl.text = toDos[indexPath.item]
        cell.cellImg.image = images[indexPath.row]
        
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

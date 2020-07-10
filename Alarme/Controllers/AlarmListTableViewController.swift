//
//  AlarmListTableViewController.swift
//  Alarme
//
//  Created by Danijela Vrzan on 2020-04-28.
//  Copyright © 2020 Danijela Vrzan. All rights reserved.
//

import UIKit

class AlarmListTableViewController: UITableViewController {
    
    var tempArray = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTableView()
    }
    
    func configureTableView() {
        tableView.hideEmptyCells()
    }
    
    //MARK: - Navigation
    
    @IBAction func unwindCancelFromAlarmEdit(_ unwindSegue: UIStoryboardSegue) {
    }
    
    @IBAction func unwindSaveFromAlarmEdit(_ unwindSegue: UIStoryboardSegue) {
        
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tempArray.count == 0 {
            self.tableView.showEmptyMessage(as: UIImage(named: K.Image.noAlarmSetUp)!)
        } else {
            self.tableView.restoreToNormalState()
        }
        
        return tempArray.count
    }


}

private extension UITableView {
    
    func hideEmptyCells() {
        tableFooterView = UIView()
    }
    
    func showEmptyMessage(as image: UIImage) {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: self.bounds.size.width, height: self.bounds.size.height))
        imageView.image = image
        imageView.sizeToFit()
        imageView.contentMode = UIView.ContentMode.scaleAspectFit
        
        self.backgroundView = imageView
        self.separatorStyle = .none
        self.isScrollEnabled = false
    }
    
    func restoreToNormalState() {
        self.backgroundView = nil
        self.separatorStyle = .singleLine
        self.isScrollEnabled = true
    }
    
}

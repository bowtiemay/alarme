//
//  DictionaryManager.swift
//  Alarme
//
//  Created by Danijela Vrzan on 2020-05-21.
//  Copyright © 2020 Danijela Vrzan. All rights reserved.
//

import UIKit

extension AlarmEditTableViewController {
    
    func modifyRepeatDaysLabel(dictionary: Dictionary<Int,String>, label: UILabel) {
        for key in dictionary.keys.sorted() {
            label.text! += dictionary[key]! + " "
        }
        if dictionary == weekday {
            label.text = "Weekdays"
        }
        if dictionary == weekend {
            label.text = "Weekends"
        }
        if dictionary.count == 7 {
            label.text = "Every day"
        }
        if dictionary.isEmpty {
            label.text = "None"
        }
    }
    
}

//
//  AlarmEditVC+TextFieldDelegate.swift
//  Alarme
//
//  Created by Danijela Vrzan on 2020-05-21.
//  Copyright © 2020 Danijela Vrzan. All rights reserved.
//

import UIKit

extension AlarmEditTableViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
    
}

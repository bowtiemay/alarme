//
//  UIView+DismissKeyboard.swift
//  Alarme
//
//  Created by Danijela Vrzan on 2020-07-09.
//  Copyright © 2020 Danijela Vrzan. All rights reserved.
//

import UIKit

extension UIView {
    
    func dismissKeyboardOnTapAnywhere() {
        let view = UIView()
        let tap = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing(_:)))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
}

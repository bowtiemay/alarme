//
//  UITableView+DismissKeyboard.swift
//  Alarme
//
//  Created by Danijela Vrzan on 2020-07-09.
//  Copyright © 2020 Danijela Vrzan. All rights reserved.
//

import UIKit

extension UITableView {
    
    func dismissKeyboardOnScroll() {
        let view = UITableView()
        view.keyboardDismissMode = .onDrag
    }
    
}

//
//  ThemeManager.swift
//  Alarme
//
//  Created by Danijela Vrzan on 2020-07-09.
//  Copyright © 2020 Danijela Vrzan. All rights reserved.
//

import UIKit

class ThemeManager {
    static let shared = ThemeManager()
    
    public var currentTheme: Theme? {
        didSet {
            NotificationCenter.default.post(name: Notification.Name.init("themeChanged"), object: nil)
        }
    }
    
    private init() {}
    
    public func set(theme: Theme) {
        self.currentTheme = theme
    }
}

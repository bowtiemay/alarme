//
//  Theme.swift
//  Alarme
//
//  Created by Danijela Vrzan on 2020-07-09.
//  Copyright © 2020 Danijela Vrzan. All rights reserved.
//

import UIKit

protocol Theme {

}

protocol Themable {
  func registerForTheme()
  func unregisterforTheme()
  func themeChanged()
}

struct LightTheme: Theme {

}

struct DarkTheme: Theme {

}

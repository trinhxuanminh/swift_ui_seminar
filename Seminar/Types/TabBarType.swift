//
//  TabBarType.swift
//  Seminar
//
//  Created by Trịnh Xuân Minh on 11/06/2024.
//

import Foundation

enum TabBarType {
  case home
  case setting
  
  var title: String {
    switch self {
    case .home:
      return "Home"
    case .setting:
      return "Setting"
    }
  }
  
  var selectedIcon: String {
    switch self {
    case .home:
      return "selectHomeTabBar"
    case .setting:
      return "selectSettingTabBar"
    }
  }
  
  var deselectedIcon: String {
    switch self {
    case .home:
      return "deselectHomeTabBar"
    case .setting:
      return "deselectSettingTabBar"
    }
  }
}

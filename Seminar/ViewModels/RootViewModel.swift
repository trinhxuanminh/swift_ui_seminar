//
//  RootViewModel.swift
//  Seminar
//
//  Created by Trịnh Xuân Minh on 11/06/2024.
//

import Foundation
import Combine

class RootViewModel: ObservableObject {
  let tabs: [TabBarType] = [.home, .setting]
  @Published private(set) var selectedTab: TabBarType = .home
  
  func changeTab(_ tab: TabBarType) {
    self.selectedTab = tab
  }
}

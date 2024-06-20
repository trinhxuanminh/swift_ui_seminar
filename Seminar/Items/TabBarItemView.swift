//
//  TabBarItemView.swift
//  Seminar
//
//  Created by Trịnh Xuân Minh on 11/06/2024.
//

import SwiftUI

struct TabBarItemView: View {
  var tab: TabBarType
  var isSelected: Bool
  
  var body: some View {
    VStack {
      Image(isSelected ? tab.selectedIcon : tab.deselectedIcon)
        .frame(width: 24, height: 24)
      
      Text(tab.title)
        .font(.system(size: 18, weight: isSelected ? .heavy : .medium))
        .foregroundStyle(isSelected ? .white : .gray)
    }
    .frame(maxWidth: .infinity)
  }
}

#Preview {
  TabBarItemView(tab: .setting, isSelected: true)
    .background(.black)
}

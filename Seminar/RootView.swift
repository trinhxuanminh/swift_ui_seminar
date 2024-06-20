//
//  RootView.swift
//  Seminar
//
//  Created by Trịnh Xuân Minh on 11/06/2024.
//

import SwiftUI

struct RootView: View {
  @StateObject private var viewModel = RootViewModel()
  
  var body: some View {
    ZStack {
      LinearGradient(
        colors: [
          .yellow,
          .pink,
          .red
        ],
        startPoint: .topLeading,
        endPoint: .bottomTrailing
      )
      .ignoresSafeArea()
      
      switch viewModel.selectedTab {
      case .home:
        HomeView()
          .frame(maxWidth: .infinity, maxHeight: .infinity)
      case .setting:
        SettingView()
          .frame(maxWidth: .infinity, maxHeight: .infinity)
      }
      
      VStack {
        Spacer()
        
        HStack {
          ForEach(viewModel.tabs, id: \.self) { tab in
            Button(action: {
              viewModel.changeTab(tab)
            }, label: {
              TabBarItemView(tab: tab, isSelected: tab == viewModel.selectedTab)
            })
          }
        }
        .frame(height: 70.0)
        .background(.black)
        .clipShape(Capsule())
        .padding([.trailing, .leading], 24)
        .padding([.bottom], 10)
      }
    }
  }
}

#Preview {
  RootView()
}

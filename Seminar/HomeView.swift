//
//  HomeView.swift
//  Seminar
//
//  Created by Trịnh Xuân Minh on 11/06/2024.
//

import SwiftUI

struct HomeView: View {
  @StateObject private var viewModel = HomeViewModel()
  
  var body: some View {
    ScrollView(.vertical, showsIndicators: false) {
      LazyVGrid(columns: [GridItem(.adaptive(minimum: 140, maximum: 200), spacing: 12)], spacing: 16) {
        ForEach(viewModel.trendings, id: \.id) { trendingViewModel in
          TrendingView(viewModel: trendingViewModel)
            .frame(maxHeight: 300)
        }
      }
      .padding([.trailing, .leading], 16)
      .padding([.top], 40)
      .padding([.bottom], 100)
    }
    .onAppear {
      viewModel.fetch()
    }
  }
}

#Preview {
  HomeView()
}

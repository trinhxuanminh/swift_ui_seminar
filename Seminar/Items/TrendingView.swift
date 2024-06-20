//
//  TrendingView.swift
//  Seminar
//
//  Created by Trịnh Xuân Minh on 11/06/2024.
//

import SwiftUI
import SDWebImageSwiftUI

struct TrendingView: View {
  @StateObject var viewModel: TrendingViewModel
  @State private var isPresented = false
  
  var body: some View {
    ZStack {
      WebImage(url: viewModel.thumbnail)
          .resizable()
          .transition(.fade(duration: 0.5))
      
      VStack {
        Spacer()
        
        Text(viewModel.name)
          .font(.system(size: 18, weight: .bold))
          .foregroundColor(.white)
          .frame(maxWidth: .infinity, alignment: .leading)
          .shadow(color: .black.opacity(0.2), radius: 10, x: 0, y: 0)
      }
      .padding([.bottom], 20)
      .padding([.leading], 10)
    }
    .cornerRadius(16, corners: .allCorners)
    .onTapGesture {
      self.isPresented = true
    }
    .navigationDestination(isPresented: $isPresented) {
      PlayTrendingView(viewModel: viewModel)
    }
  }
}

#Preview {
  TrendingView(viewModel: TrendingViewModel(trending: Trending(id: UUID().uuidString, name: "Name", description: "Description", thumbnailURL: "http://palestine.proxglobal.co/1706246326194.thumb")))
}

//
//  PlayTrendingView.swift
//  Seminar
//
//  Created by Trịnh Xuân Minh on 12/06/2024.
//

import SwiftUI

struct PlayTrendingView: View {
  @StateObject var viewModel: TrendingViewModel
  @Environment(\.dismiss) var pop
  
  var body: some View {
    ZStack {
      VStack {
        Button {
          pop()
        } label: {
          Text("< Back")
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding([.leading], 16)
        
        Spacer()
      }
      
      Text(viewModel.description)
        .padding([.leading, .trailing], 16)
    }
    .navigationBarHidden(true)
  }
}

#Preview {
  PlayTrendingView(viewModel: TrendingViewModel(trending: Trending(id: UUID().uuidString, name: "Name", description: "Description", thumbnailURL: "http://palestine.proxglobal.co/1706246326194.thumb")))
}

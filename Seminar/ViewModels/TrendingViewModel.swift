//
//  TrendingViewModel.swift
//  Seminar
//
//  Created by Trịnh Xuân Minh on 11/06/2024.
//

import Foundation
import Combine

class TrendingViewModel: Identifiable, ObservableObject {
  @Published private(set) var name: String
  @Published private(set) var description: String
  @Published private(set) var thumbnail: URL?
  
  init(trending: Trending) {
    self.name = trending.name
    self.description = trending.description
    self.thumbnail = trending.thumbnailURL.getCleanedURL()
  }
}

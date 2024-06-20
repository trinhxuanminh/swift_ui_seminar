//
//  HomeViewModel.swift
//  Seminar
//
//  Created by Trịnh Xuân Minh on 11/06/2024.
//

import Combine

class HomeViewModel: ObservableObject {
  @Published private(set) var trendings = [TrendingViewModel]()
  
  private let useCase = HomeUseCase()
  
  @MainActor func fetch() {
    Task {
      self.trendings = await useCase.loadTrending()
    }
  }
}

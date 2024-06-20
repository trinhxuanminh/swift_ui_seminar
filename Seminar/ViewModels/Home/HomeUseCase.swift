//
//  HomeUseCase.swift
//  Seminar
//
//  Created by Trịnh Xuân Minh on 11/06/2024.
//

import Foundation

class HomeUseCase {
  func loadTrending() async -> [TrendingViewModel] {
    do {
      let trendingResponse: TrendingResponse = try await APIService().request(from: .trending)
      return trendingResponse.trendings.map { trending in
        return TrendingViewModel(trending: trending)
      }
    } catch {
      let delaySecond = 5
      try? await Task.sleep(nanoseconds: UInt64(delaySecond) * 1_000_000_000)
      return await loadTrending()
    }
  }
}

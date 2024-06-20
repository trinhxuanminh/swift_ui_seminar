//
//  TrendingResponse.swift
//  Seminar
//
//  Created by Trịnh Xuân Minh on 11/06/2024.
//

import Foundation

struct TrendingResponse: Codable {
  let code: Int
  let trendings: [Trending]
  
  enum CodingKeys: String, CodingKey {
    case code
    case trendings = "data"
  }
}

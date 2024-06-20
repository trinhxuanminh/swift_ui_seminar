//
//  Trending.swift
//  Seminar
//
//  Created by Trịnh Xuân Minh on 11/06/2024.
//

import Foundation

struct Trending: Codable {
  let id: String
  let name: String
  let description: String
  let thumbnailURL: String
  
  enum CodingKeys: String, CodingKey {
    case id
    case name
    case description
    case thumbnailURL = "thumb"
  }
}

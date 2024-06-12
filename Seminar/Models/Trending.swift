//
//  Video.swift
//  Seminar
//
//  Created by Trịnh Xuân Minh on 11/06/2024.
//

import Foundation

struct Video: Identifiable, Codable {
  let id: String
  let name: String
  let videoURL: String
  let description: String
  let thumbnailURL: String
  let like: Int
  
  enum CodingKeys: String, CodingKey {
    case id
    case name
    case videoURL = "url"
    case description
    case thumbnailURL = "thumb"
    case like
  }
}

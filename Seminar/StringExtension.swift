//
//  StringExtension.swift
//  Seminar
//
//  Created by Trịnh Xuân Minh on 11/06/2024.
//

import Foundation

extension String {
  func getCleanedURL() -> URL? {
    guard !self.isEmpty else {
      return nil
    }
    if let url = URL(string: self) {
      return url
    } else if let urlEscapedString = self.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed),
              let escapedURL = URL(string: urlEscapedString) {
      return escapedURL
    }
    return nil
  }
}

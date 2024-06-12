//
//  HomeViewModel.swift
//  Seminar
//
//  Created by Trịnh Xuân Minh on 11/06/2024.
//

import Combine

class HomeViewModel: ObservableObject {
  @Published private(set) var movies = [String]()
  
  func fetch() {
    
  }
}

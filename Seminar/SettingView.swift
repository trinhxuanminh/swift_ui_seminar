//
//  SettingView.swift
//  Seminar
//
//  Created by Trịnh Xuân Minh on 11/06/2024.
//

import SwiftUI

struct SettingView: View {
  var body: some View {
    
    
    ZStack {
      Image("meow")
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(maxWidth: .infinity)
      
      VStack {
        
        Text("Setting")
        //          .frame(maxWidth: .infinity)
        HStack {
          
          Text("New")
          
          Text("Old")
        }
      }
    }
  }
}

#Preview {
  SettingView()
}

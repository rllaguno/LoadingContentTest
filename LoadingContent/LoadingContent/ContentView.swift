//
//  ContentView.swift
//  LoadingContent
//
//  Created by Rodrigo Llaguno on 31/07/25.
//

import SwiftUI

struct ContentView: View {
  @State private var isLoading = true
  
  var body: some View {
    ZStack {
      Color.black.opacity(0.9)
        .ignoresSafeArea()
      
      VStack {
        if isLoading {
          LoadingContentView()
        } else {
          LoadedContentView()
        }
      }
      .padding()
    }
  }
}

#Preview {
  ContentView()
}

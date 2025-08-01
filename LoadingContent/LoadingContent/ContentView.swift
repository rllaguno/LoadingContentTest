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
        Spacer()
        
        if isLoading {
          LoadingContentView()
        } else {
          LoadedContentView()
        }
        
        Spacer()
        
        Button("Load") {
          withAnimation {
            self.isLoading.toggle()
          }
        }
      }
      .padding()
    }
  }
}

#Preview {
  ContentView()
}

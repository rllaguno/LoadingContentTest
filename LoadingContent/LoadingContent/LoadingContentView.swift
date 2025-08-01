//
//  LoadingContentView.swift
//  LoadingContent
//
//  Created by Rodrigo Llaguno on 31/07/25.
//

import SwiftUI

struct LoadingContentView: View {
  @State private var animate: Bool = false
  
  var gradient = LinearGradient(gradient: Gradient(colors: [.clear, .clear, .clear, .clear, .white.opacity(0.05), .clear, .clear, .clear, .clear]), startPoint: .leading, endPoint: .trailing)
  
  var body: some View {
    ZStack {
      loadingPlaceholders
      
      gradient
        .rotationEffect(.degrees(20))
        .offset(x: -350)
        .offset(x: animate ? 700 : -350)
        .mask {
          loadingPlaceholders
        }
    }
    .onAppear {
      withAnimation(.linear(duration: 1.0).repeatForever(autoreverses: false)) {
        animate = true
      }
    }
  }
  
  //MARK: - Header Placeholders
  var headerPlaceholders: some View {
    HStack {
      Circle()
        .frame(width: 32, height: 32)
      
      Rectangle()
        .clipShape(.rect(cornerRadius: 8))
        .frame(width: 92, height: 18)
      
      Rectangle()
        .clipShape(.rect(cornerRadius: 8))
        .frame(width: 48, height: 18)
    }
  }
  
  //MARK: - Content Placeholders
  var contentPlaceholders: some View {
    HStack(alignment: .top) {
      VStack(alignment: .leading, spacing: 10) {
        
        Rectangle()
          .clipShape(.rect(cornerRadius: 8))
          .frame(maxWidth: 170, maxHeight: 22)
        
        Rectangle()
          .clipShape(.rect(cornerRadius: 8))
          .frame(maxWidth: 190, maxHeight: 22)
        
        Rectangle()
          .clipShape(.rect(cornerRadius: 8))
          .frame(maxWidth: 120, maxHeight: 22)
        
        Rectangle()
          .clipShape(.rect(cornerRadius: 8))
          .frame(maxWidth: 150, maxHeight: 22)
      }
      
      Spacer()
      
      Rectangle()
        .clipShape(.rect(cornerRadius: 8))
        .frame(maxWidth: 200, maxHeight: 128)
    }
  }
  
  //MARK: - Footer Placeholders
  var footerPlaceholders: some View {
    HStack {
      Rectangle()
        .clipShape(.rect(cornerRadius: 8))
        .frame(width: 120, height: 20)
      
      Spacer()
      
      Rectangle()
        .clipShape(.rect(cornerRadius: 8))
        .frame(width: 90, height: 20)
    }
  }
  
  //MARK: - Loading Placeholders
  var loadingPlaceholders: some View {
    VStack(alignment: .leading, spacing: 16) {
      headerPlaceholders
      
      contentPlaceholders
      
      footerPlaceholders
    }
    .foregroundStyle(.loading)
    .padding()
  }
}

#Preview {
  LoadingContentView()
}

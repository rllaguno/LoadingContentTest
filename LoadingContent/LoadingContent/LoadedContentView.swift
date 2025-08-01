//
//  LoadedContentView.swift
//  LoadingContent
//
//  Created by Rodrigo Llaguno on 31/07/25.
//

import SwiftUI

struct LoadedContentView: View {
  let user: String = "testUser"
  let time: String = "4"
  let contentText: String = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed facilisis ullamcorper nunc eget volutpat."
  let image: String = "testImage"
  let link: String = "lipsum.com"
  
  var body: some View {
    ZStack {
      loaded
    }
  }
  
  //MARK: - Header
  var header: some View {
    HStack {
      ZStack {
        Circle()
          .frame(width: 32, height: 32)
        
        Image(systemName: "person.fill")
          .foregroundStyle(.loading)
      }
      
      Text(user)
        .bold()
      
      Text("\(time)h ago")
    }
  }
  
  //MARK: - Content
  var content: some View {
    HStack(alignment: .top) {
      VStack(alignment: .leading, spacing: 10) {
        
        Text(contentText)
      }
      
      Spacer()
      
      Image(image)
        .resizable()
        .clipShape(.rect(cornerRadius: 8))
        .frame(maxWidth: 200, maxHeight: 128)
    }
  }
  
  //MARK: - Footer
  var footer: some View {
    HStack {
      Text(link)
        .italic()
      
      Spacer()
      
      Button {
        //action
      } label: {
        ZStack {
          Rectangle()
            .clipShape(.rect(cornerRadius: 8))
            .frame(width: 90, height: 20)
        
          Text("Learn More")
            .foregroundStyle(.black)
            .font(.footnote)
            .bold()
          
        }
      }
    }
  }
  
  //MARK: - Loaded
  var loaded: some View {
    VStack(alignment: .leading, spacing: 16) {
      header
      
      content
      
      footer
    }
    .foregroundStyle(.white)
    .padding()
  }
}

#Preview {
  LoadedContentView()
}


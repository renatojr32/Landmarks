//
//  ContentView.swift
//  Landmarks
//
//  Created by Renato Junior on 30/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       VStack(alignment:.leading) {
           
            Text("Turtle Rock")
              .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
          HStack {
             Text("Joshua Tree National Park")
               Spacer()
             Text("California")
                
          }
          .font(.subheadline)
            
        }
       .padding()
       
    }
}

#Preview {
    ContentView()
}

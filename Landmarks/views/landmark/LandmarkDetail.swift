//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Renato Junior on 30/04/24.
//

import SwiftUI

struct LandmarkDetail: View {
  var landmark: Landmark
  
    var body: some View {
      ScrollView {
        MapView(coordinate: landmark.locationCoordinate)
          .frame(height: 300)
        
        CircleImage(image: landmark.image)
          .offset(y:-130)
          .padding(.bottom, -130)
        
        VStack(alignment:.leading) {
             
          Text(landmark.name)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            HStack {
              Text(landmark.park)
                 Spacer()
              Text(landmark.state)
                  
            }
            .font(.subheadline)
            .foregroundColor(.secondary)
          
          Divider()
          
          Text("About \(landmark.name)")
            .font(.title2)
          
          Text(landmark.description)
            .font(.title2)
              
          }
        .padding()
        
        
      
        
        Spacer()
      
      }
      .navigationTitle(landmark.name)
      .navigationBarTitleDisplayMode(.inline)
    }
    
}

#Preview {
  LandmarkDetail(landmark: landmarks[0])
}

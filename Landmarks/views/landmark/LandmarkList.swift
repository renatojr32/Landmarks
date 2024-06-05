//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Renato Junior on 30/04/24.
//

import SwiftUI

struct LandmarkList: View {
  @Environment(ModelData.self) var modelData
  @State private var showIsFavoriteOnly = false
  
  var filteredLandmarks: [Landmark]{
    modelData.landmarks.filter { landmark in
      (!showIsFavoriteOnly || landmark.isFavorite)
    }
  }
  
  
  var body: some View {
    NavigationSplitView {
      List {
        Toggle(isOn: $showIsFavoriteOnly){
          Text("Favorites only")
        }
        ForEach(filteredLandmarks){ lamark in
          NavigationLink {
           LandmarkDetail(landmark: lamark)
          } label: {
            LandmarkRow(landmark: lamark)
          }
        }
        .animation(.default, value: filteredLandmarks)
        .navigationTitle("Landmarks")
      }
    } detail: {
      Text("select")
    }
  }
}

#Preview {
    LandmarkList()
}

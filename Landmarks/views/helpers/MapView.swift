//
//  MapView.swift
//  Landmarks
//
//  Created by Renato Junior on 30/04/24.
//

import SwiftUI
import MapKit

struct MapView: View {
  var coordinate: CLLocationCoordinate2D
  
    var body: some View {
      Map(position: .constant(.region(region)))
    }
  
  private var region: MKCoordinateRegion {
    MKCoordinateRegion(
      center: CLLocationCoordinate2D(latitude: coordinate.latitude, longitude:coordinate.longitude), span:MKCoordinateSpan(
        latitudeDelta: 0.2, longitudeDelta: 0.2
      )
    )
  }
}

#Preview {
    MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
}

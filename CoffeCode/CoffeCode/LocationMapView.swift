//
//  LocationMapView.swift
//  CoffeCode
//
//  Created by VT on 14.11.2022.
//

import SwiftUI
import MapKit

struct LocationMapView: View {
    
    @State private var region = MKCoordinateRegion(center:CLLocationCoordinate2D(latitude: 43.256670,
                                                        longitude: 76.928610),
                                                   span: MKCoordinateSpan(latitudeDelta: 0.01,
                                                                    longitudeDelta: 0.01))
    var body: some View {
        ZStack {
            Map(coordinateRegion: $region)
        }
    }
}

struct LocationMapView_Previews: PreviewProvider {
    static var previews: some View {
        LocationMapView()
    }
}

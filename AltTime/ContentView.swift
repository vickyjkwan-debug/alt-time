//
//  ContentView.swift
//  AltTime
//
//  Created by Vicky Kwan on 10/29/26.
//

import SwiftUI
import MapKit

struct ContentView: View {
    private let landmark = CLLocationCoordinate2D(
        latitude: 37.7955, longitude: -122.3937
    )
    
    var body: some View {
        Map(initialPosition: .region(
            MKCoordinateRegion(
                center: landmark,
                span: MKCoordinateSpan(
                    latitudeDelta: 0.02,
                    longitudeDelta: 0.02
                )
            ))) {
                Marker("Ferry Building", coordinate: landmark)
            }
            .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}

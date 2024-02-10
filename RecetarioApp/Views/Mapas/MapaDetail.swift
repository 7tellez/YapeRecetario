//
//  MapaDetail.swift
//  RecetarioApp
//
//  Created by Cristian Camilo tellez Hidalgo on 10/02/24.
//

import SwiftUI
import MapKit
import Combine

struct MapaDetail: View {
    
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: -12.0464, longitude: -77.0428),
        span: MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10)
    )

    // Definir las ubicaciones en Perú
    let locations: [Location] = [
        Location(coordinate: CLLocationCoordinate2D(latitude: -12.0464, longitude: -77.0428), title: "Lima"), // Lima
        Location(coordinate: CLLocationCoordinate2D(latitude: -13.1631, longitude: -72.5450), title: "Cusco"), // Cusco
        Location(coordinate: CLLocationCoordinate2D(latitude: -15.9250, longitude: -69.3350), title: "Puno"), // Puno
        Location(coordinate: CLLocationCoordinate2D(latitude: -16.4090, longitude: -71.5375), title: "Arequipa"), // Arequipa
        Location(coordinate: CLLocationCoordinate2D(latitude: -9.1900, longitude: -75.0152), title: "Iquitos")   // Iquitos
    ]

    var body: some View {
        NavigationView {
            Map(coordinateRegion: $region, showsUserLocation: false, annotationItems: locations) { location in
                MapMarker(coordinate: location.coordinate, tint: .blue)
            }
            .accessibilityLabel("Ubicaciones en Perú: \(locations.map { $0.title }.joined(separator: ", "))")
            .navigationTitle("Restaurantes")
        }
    }

//        var region: MKCoordinateRegion {
//            let centerLatitude = locations.map { $0.coordinate.latitude }.reduce(0, +) / Double(locations.count)
//            let centerLongitude = locations.map { $0.coordinate.longitude }.reduce(0, +) / Double(locations.count)
//
//            let center = CLLocationCoordinate2D(latitude: centerLatitude, longitude: centerLongitude)
//
//            let span = MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10)
//            return MKCoordinateRegion(center: center, span: span)
//        }
}

struct MapaDetail_Previews: PreviewProvider {
    static var previews: some View {
        MapaDetail()
    }
}

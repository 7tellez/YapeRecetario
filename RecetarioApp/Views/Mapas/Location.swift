//
//  Location.swift
//  RecetarioApp
//
//  Created by Cristian Camilo tellez Hidalgo on 10/02/24.
//

import SwiftUI
import MapKit

struct Location: Identifiable {
    let id = UUID()
    let coordinate: CLLocationCoordinate2D
    let title: String
}

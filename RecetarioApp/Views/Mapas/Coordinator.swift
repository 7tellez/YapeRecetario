//
//  Coordinator.swift
//  RecetarioApp
//
//  Created by Cristian Camilo tellez Hidalgo on 10/02/24.
//

import SwiftUI

class Coordinator: NSObject {
    var tabBarController: UITabBarController?

    func selectTab(index: Int) {
        tabBarController?.selectedIndex = index
    }
}

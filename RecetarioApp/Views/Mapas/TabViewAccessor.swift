//
//  TabViewAccessor.swift
//  RecetarioApp
//
//  Created by Cristian Camilo tellez Hidalgo on 10/02/24.
//

import SwiftUI

struct TabViewAccessor: UIViewControllerRepresentable {
    var coordinator: Coordinator

    func makeUIViewController(context: Context) -> UIViewController {
        let viewController = UIViewController()
        let hostingController = UIHostingController(rootView: EmptyView())

        coordinator.tabBarController = hostingController.tabBarController

        viewController.addChild(hostingController)
        viewController.view.addSubview(hostingController.view)
        hostingController.didMove(toParent: viewController)

        return viewController
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        // No es necesario implementar nada aquí
    }
}

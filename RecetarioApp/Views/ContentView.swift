//
//  ContentView.swift
//  RecetarioApp
//
//  Created by Cristian Camilo Tellez on 22/10/21.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .home
    private var coordinator = Coordinator()
    
    enum Tab {
        case featured
        case list
        case home
        case map
    }
    
    var body: some View {
        TabView(selection: $selection) {
            CategoriaHome()
                .tabItem {
                    Label("Destacado", systemImage: "list.bullet")
                }
                .tag(Tab.featured)
            
            RecetarioCardList()
                .tabItem {
                    Label("Principal", systemImage: "house")
                }
                .tag(Tab.home)
            
            RecetarioList()
                .tabItem {
                    Label("Lista", systemImage: "list.bullet.rectangle.portrait")
                }
                .tag(Tab.list)
            MapaDetail()
//            NavigationLink(destination: RecetarioDetail(coordinator: coordinator)) {
//                Text("Ir a RecetarioDetail")
//            }
                .tabItem {
                    Label("Mapa", systemImage: "map")
                }
                .tag(Tab.map)
        }
        .background(
            TabViewAccessor(coordinator: coordinator)
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(ColorScheme.allCases, id: \.self) {
            ContentView()
                .environmentObject(ModelData()).preferredColorScheme($0)
        }
        .previewInterfaceOrientation(.portrait)
    }
}

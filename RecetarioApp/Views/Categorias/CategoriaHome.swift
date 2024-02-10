//
//  CategoriaHome.swift
//  RecetarioApp
//
//  Created by Cristian Camilo Tellez on 25/01/23.
//

import SwiftUI

struct CategoriaHome: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                PageView(pages: modelData.features.map { DestacadoCard(recetario: $0) })
                    .aspectRatio(3 / 2, contentMode: .fill)
                    .padding()
                
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    Divider()
                    
                    CategoriaRow(categoriaName: key, items: modelData.categories[key]!)
                }
            }
            .navigationTitle("Destacados")
            .background(Color.gray)
            
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .padding(0)
    }
}

struct CategoriaHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoriaHome()
            .environmentObject(ModelData())
            .background(Color.gray)
    }
}

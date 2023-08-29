//
//  GridList.swift
//  Sec11-ListasyGrids
//
//  Created by nelson tapia on 28-08-23.
//

import SwiftUI

struct GridList: View {
    
    
    @ObservedObject var grid = MenuOptions()
    
    var body: some View {
        NavigationView {
            ScrollView(){
                LazyVGrid(columns: grid.gridItem, spacing: 30) {
                    ForEach(lista){ item in
                        Text(item.emoji).font(.system(size: 80))
                    }
                }
            }.navigationTitle("Grids")
                .toolbar {
                    ToolbarItem{
                        Menu("Opciones"){
                            Section{
                                Button("1 Columna"){
                                    grid.columnas(num: 1)
                                }
                                Button("2 Columna"){
                                    grid.columnas(num: 2)
                                }
                                Button("3 Columna"){
                                    grid.columnas(num: 3)
                                }
                                Button("4 Columna"){
                                    grid.columnas(num: 4)
                                }
                                Button("Borrar userDefoult"){
                                    UserDefaults.standard.removeObject(forKey: "cantidadColumnas")
                                }
                            }
                        }
                    }
                }
        }
    }
}

struct GridList_Previews: PreviewProvider {
    static var previews: some View {
        GridList()
    }
}

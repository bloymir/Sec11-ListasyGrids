//
//  MenuOptions.swift
//  Sec11-ListasyGrids
//
//  Created by nelson tapia on 29-08-23.
//

import Combine
import SwiftUI

class MenuOptions: ObservableObject {
    
    @Published var gridItem = [GridItem()]
    
    func columnas(num: Int){
        gridItem = Array(repeating: .init(.flexible(maximum:80)), count: num)
        UserDefaults.standard.set(num, forKey: "cantidadColumnas")
    }
    
    init(){
        if let numero = UserDefaults.standard.object(forKey: "cantidadColumnas") as? Int{
            gridItem = Array(repeating: .init(.flexible(maximum:80)), count: numero)
        }else {
            gridItem = Array(repeating: .init(.flexible(maximum:80)), count: 1)
        }
    }
    
}

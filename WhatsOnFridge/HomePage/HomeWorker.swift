//
//  HomeWorker.swift
//  WhatsOnFridge
//
//  Created by Emilien on 22/10/2024.
//

import Foundation

class HomeWorker {
    
    func getLegumes() -> [HomeModel.Legume] {
        return [
            HomeModel.Legume(name: "Carotte", description: "Carotte Jaune", weight: 500, image: nil),
            HomeModel.Legume(name: "Tomate", description: "Tomate Jaune", weight: 400, image: nil),
            HomeModel.Legume(name: "Oignon", description: "Oignon Jaune", weight: 300, image: nil)
        ]
    }
}


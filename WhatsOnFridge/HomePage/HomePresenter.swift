//
//  HomePresenter.swift
//  WhatsOnFridge
//
//  Created by Emilien on 22/10/2024.
//

import Foundation

class HomePresenter {
    
    var interactor: HomeInteractor
    var items: [String] = ["Item 1", "Item 2", "Item 3"] // Exemple de données

        init(interactor: HomeInteractor) {
            self.interactor = interactor
        }
    
    func buttonAddTapped(){
        interactor.handleButtonAddTapped()
    }
    func buttonDeleteTapped(){
        interactor.handleButtonDeleteTapped()
    }
    
    func ButtonUnactiveTapped(){
        interactor.handleButtonUnactivateTapped()
    }
}


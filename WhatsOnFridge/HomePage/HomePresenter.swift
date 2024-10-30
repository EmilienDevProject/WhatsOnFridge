//
//  HomePresenter.swift
//  WhatsOnFridge
//
//  Created by Emilien on 22/10/2024.
//

import Foundation

class HomePresenter {
    
    weak var viewController: HomeView?
    
    let interactor: HomeInteractor
        init(interactor: HomeInteractor) {
            self.interactor = interactor
    }
    var legumes: [HomeModel.Legume] = []
    
    func showLegumes(_ legumes: [HomeModel.Legume]) {
        let legumeViewModels = legumes.map { "\($0.name) - \($0.description), \($0.weight)g" }
        viewController?.afficherLegumes(legumeViewModels)
    }
    
    var items: [String] = ["Item 1", "Item 2", "Item 3"]
    
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


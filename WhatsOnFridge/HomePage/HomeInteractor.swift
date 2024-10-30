//
//  HomeInteractor.swift
//  WhatsOnFridge
//
//  Created by Emilien on 22/10/2024.
//

import Foundation

class HomeInteractor {
    
    var presenter: HomePresenter?
    let worker = HomeWorker()
    
    func retrieveLegumes(){
        let legumes = worker.getLegumes()
        presenter?.showLegumes(legumes)
    }
    
    func handleButtonAddTapped(){
        print("FUNC TAP ADD BUTTON")
    }
    
    func handleButtonDeleteTapped(){
        print("FUNC TAP DELETE BUTTON")
    }
    
    func handleButtonUnactivateTapped(){
        print ("FUNC TAPP UNACTIVATE BUTTON")
    }
}

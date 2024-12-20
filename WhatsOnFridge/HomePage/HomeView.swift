//
//  HomeView.swift
//  WhatsOnFridge
//
//  Created by Emilien on 22/10/2024.
//

import Foundation
import UIKit

class HomeView: UIViewController {
    
    private lazy var mainView: UIView = {
        let mainView = UIView()
        view.addSubview(mainView)
        mainView.addSubview(header)
        mainView.addSubview(vStackView)
        mainView.translatesAutoresizingMaskIntoConstraints = false
        
        mainView.backgroundColor = .gray
        return mainView
    }()
    
    private lazy var menu: MenuType = {
        let menu = MenuType()
        menu.translatesAutoresizingMaskIntoConstraints = false
        return menu
    }()
    private lazy var header: UIView = {
        let header = UIView()
//        header.addSubview(menu)
        header.addSubview(personnalAcces)
        header.translatesAutoresizingMaskIntoConstraints = false
        header.backgroundColor = .blue
        return header
    }()
    private lazy var personnalAcces: UIButton = {
        let persoAcces = UIButton()
        persoAcces.translatesAutoresizingMaskIntoConstraints = false
        persoAcces.backgroundColor = .yellow
        return persoAcces
    }()
    private lazy var vStackView: UIStackView = {
        // Contiendra le table view list
        let vStackView = UIStackView()
        vStackView.translatesAutoresizingMaskIntoConstraints = false
        vStackView.backgroundColor = .orange
        return vStackView
    }()
    
// MARK: LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
// MARK: UI
    
    func setupUI(){
        NSLayoutConstraint.activate([
            mainView.widthAnchor.constraint(equalTo: view.widthAnchor),
            mainView.heightAnchor.constraint(equalTo: view.heightAnchor),
            
            header.leadingAnchor.constraint(equalTo: mainView.leadingAnchor),
            header.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            header.trailingAnchor.constraint(equalTo: mainView.trailingAnchor),
            header.heightAnchor.constraint(equalToConstant: 70),
            
            personnalAcces.widthAnchor.constraint(equalToConstant: 50),
            personnalAcces.heightAnchor.constraint(equalToConstant: 50),
            personnalAcces.trailingAnchor.constraint(equalTo: header.trailingAnchor, constant: -10),
            personnalAcces.bottomAnchor.constraint(equalTo: header.bottomAnchor, constant: -10),
            
            menu.leadingAnchor.constraint(equalTo: header.leadingAnchor, constant: 10),
            menu.bottomAnchor.constraint(equalTo: header.bottomAnchor, constant: -10),
            
            vStackView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 5),
            vStackView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -5),
            vStackView.topAnchor.constraint(equalTo: header.bottomAnchor, constant: 5),
            vStackView.heightAnchor.constraint(equalTo: view.heightAnchor)
        ])
    }
}

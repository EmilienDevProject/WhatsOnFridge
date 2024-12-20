//
//  HomeView.swift
//  WhatsOnFridge
//
//  Created by Emilien on 22/10/2024.
//

import UIKit

class HomeView: UIViewController {
    
    private lazy var mainView: UIView = {
        let mainView = UIView()
        mainView.translatesAutoresizingMaskIntoConstraints = false
        mainView.backgroundColor = .gray
        return mainView
    }()
    
    private lazy var header: UIView = {
        let header = UIView()
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
    
    private lazy var menu: MenuType = {
        let menu = MenuType()
        menu.translatesAutoresizingMaskIntoConstraints = false
        menu.backgroundColor = .magenta
        return menu
    }()
    
    private lazy var vStackView: UIStackView = {
        let vStackView = UIStackView()
        vStackView.translatesAutoresizingMaskIntoConstraints = false
        vStackView.backgroundColor = .orange
        return vStackView
    }()
    
    // MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: - UI Setup
    
    private func setupUI() {
        view.backgroundColor = .white
        view.addSubview(mainView)
        mainView.addSubview(header)
        mainView.addSubview(vStackView)
        header.addSubview(personnalAcces)
        header.addSubview(menu)
        
        NSLayoutConstraint.activate([
            // Main View
            mainView.widthAnchor.constraint(equalTo: view.widthAnchor),
            mainView.heightAnchor.constraint(equalToConstant: 1500),
            
            // Header
            header.leadingAnchor.constraint(equalTo: mainView.leadingAnchor),
            header.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            header.trailingAnchor.constraint(equalTo: mainView.trailingAnchor),
            header.heightAnchor.constraint(equalToConstant: 70),
            
            // Personal Access Button
            personnalAcces.widthAnchor.constraint(equalToConstant: 50),
            personnalAcces.heightAnchor.constraint(equalToConstant: 50),
            personnalAcces.trailingAnchor.constraint(equalTo: header.trailingAnchor, constant: -10),
            personnalAcces.bottomAnchor.constraint(equalTo: header.bottomAnchor, constant: -10),
            
            // Menu Button
            menu.leadingAnchor.constraint(equalTo: header.leadingAnchor, constant: 10),
            menu.topAnchor.constraint(equalTo: header.topAnchor, constant: 10),
            
            // VStack View
            vStackView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 5),
            vStackView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -5),
            vStackView.topAnchor.constraint(equalTo: header.bottomAnchor, constant: 5),
            vStackView.heightAnchor.constraint(equalToConstant: 900)
        ])
    }
}

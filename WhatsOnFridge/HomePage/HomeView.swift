//
//  HomeView.swift
//  WhatsOnFridge
//
//  Created by Emilien on 22/10/2024.
//

import Foundation
import UIKit

class HomeView: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("hello world")
        setupUI()
    }
    
    private lazy var createButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Create", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var deleteButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Delete", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var readButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Read", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var updateButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Update", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var buttonContentView: UIView = {
        let buttonView = UIView()
        buttonView.translatesAutoresizingMaskIntoConstraints = false
        buttonView.addSubview(createButton)
        buttonView.addSubview(deleteButton)
        buttonView.addSubview(readButton)
        buttonView.addSubview(updateButton)
        return buttonView
    }()
    
    func setupUI(){
        view.addSubview(buttonContentView)
        let heightButton = 30
        let widthButton = 30
        
        NSLayoutConstraint.activate([
            createButton.topAnchor.constraint(equalTo: buttonContentView.topAnchor, constant: 5),
            createButton.leadingAnchor.constraint(equalTo: buttonContentView.leadingAnchor, constant: 5),
            createButton.heightAnchor.constraint(equalTo: heightButton),
            createButton.widthAnchor.constraint(equalTo: widthButton),
            
            readButton.centerYAnchor.constraint(equalTo: createButton.centerYAnchor),
            readButton.leadingAnchor.constraint(equalTo: createButton.trailingAnchor, constant: 5),
            readButton.heightAnchor.constraint(equalTo: heightButton),
            readButton.widthAnchor.constraint(equalTo: widthButton),
            
            buttonContentView.topAnchor.constraint(equalTo: view.topAnchor),
            buttonContentView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            buttonContentView.heightAnchor.constraint(equalToConstant: 40),
            buttonContentView.widthAnchor.constraint(equalTo: 145)
        ])
    }
}

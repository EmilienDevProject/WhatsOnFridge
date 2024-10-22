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
        button.backgroundColor = .green
        return button
    }()
    
    private lazy var deleteButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Delete", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .red
        return button
    }()
    
    private lazy var readButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Read", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .cyan
        return button
    }()
    
    private lazy var updateButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Update", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .orange
        return button
    }()
    
    private lazy var buttonContentView: UIView = {
        let buttonView = UIView()
        buttonView.translatesAutoresizingMaskIntoConstraints = false
        buttonView.backgroundColor = .lightGray
        buttonView.addSubview(createButton)
        buttonView.addSubview(deleteButton)
        buttonView.addSubview(readButton)
        buttonView.addSubview(updateButton)
        return buttonView
    }()
    
    func setupUI(){
        view.addSubview(buttonContentView)
        let heightButton = CGFloat(30)
        let widthButton = CGFloat(30)
        
        NSLayoutConstraint.activate([
            createButton.topAnchor.constraint(equalTo: buttonContentView.topAnchor, constant: 5),
            createButton.leadingAnchor.constraint(equalTo: buttonContentView.leadingAnchor, constant: 5),
            createButton.heightAnchor.constraint(equalToConstant: heightButton),
            createButton.widthAnchor.constraint(equalToConstant: widthButton),
            
            readButton.centerYAnchor.constraint(equalTo: createButton.centerYAnchor),
            readButton.leadingAnchor.constraint(equalTo: createButton.trailingAnchor, constant: 5),
            readButton.heightAnchor.constraint(equalToConstant: heightButton),
            readButton.widthAnchor.constraint(equalToConstant: widthButton),
            
            updateButton.centerYAnchor.constraint(equalTo: createButton.centerYAnchor),
            updateButton.leadingAnchor.constraint(equalTo: readButton.leadingAnchor, constant: 5),
            updateButton.heightAnchor.constraint(equalToConstant: heightButton),
            updateButton.widthAnchor.constraint(equalToConstant: widthButton),
            
            deleteButton.centerYAnchor.constraint(equalTo: createButton.centerYAnchor),
            deleteButton.leadingAnchor.constraint(equalTo: updateButton.trailingAnchor, constant: 5),
            deleteButton.heightAnchor.constraint(equalToConstant: heightButton),
            deleteButton.widthAnchor.constraint(equalToConstant: widthButton),
            
            buttonContentView.topAnchor.constraint(equalTo: view.topAnchor),
            buttonContentView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            buttonContentView.heightAnchor.constraint(equalToConstant: 40),
            buttonContentView.widthAnchor.constraint(equalToConstant: 145)
        ])
    }
}

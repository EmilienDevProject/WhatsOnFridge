//
//  HomeView.swift
//  WhatsOnFridge
//
//  Created by Emilien on 22/10/2024.
//

import Foundation
import UIKit

class HomeView: UIViewController {
 
    var presenter: HomePresenter!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let interactor = HomeInteractor()
        presenter = HomePresenter(interactor: interactor)
        interactor.presenter = presenter
        presenter.viewController = self
        
        setupUI()
        presenter.interactor.retrieveLegumes()
    }
    
    private lazy var createButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("C", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .green
        button.addTarget(self, action: #selector(tapAddButton), for: .touchUpInside)
        return button
    }()
    
    private lazy var deleteButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("D", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .red
        button.addTarget(self, action: #selector(tapDeleteButton), for: .touchUpInside)
        return button
    }()
    
    private lazy var readButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("R", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .cyan
        button.addTarget(self, action: #selector(tapButtonUnactivate), for: .touchUpInside)
        return button
    }()
    
    private lazy var updateButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("U", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .orange
        button.addTarget(self, action: #selector(tapButtonUnactivate), for: .touchUpInside)
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
    
    private lazy var tableView: UITableView = {
       let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return tableView
    }()
    
    func setupUI(){
        view.backgroundColor = .white
        view.addSubview(buttonContentView)
        view.addSubview(tableView)
        
        let heightButton = CGFloat(30)
        let widthButton = CGFloat(60)
        
        NSLayoutConstraint.activate([
            buttonContentView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonContentView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            buttonContentView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            buttonContentView.heightAnchor.constraint(equalToConstant: 40),
            buttonContentView.widthAnchor.constraint(equalToConstant: 300),
            
            createButton.topAnchor.constraint(equalTo: buttonContentView.topAnchor, constant: 5),
            createButton.leadingAnchor.constraint(equalTo: buttonContentView.leadingAnchor, constant: 70),
            createButton.heightAnchor.constraint(equalToConstant: heightButton),
            createButton.widthAnchor.constraint(equalToConstant: widthButton),
            
            readButton.centerYAnchor.constraint(equalTo: createButton.centerYAnchor),
            readButton.leadingAnchor.constraint(equalTo: createButton.trailingAnchor, constant: 5),
            readButton.heightAnchor.constraint(equalToConstant: heightButton),
            readButton.widthAnchor.constraint(equalToConstant: widthButton),
            
            updateButton.centerYAnchor.constraint(equalTo: createButton.centerYAnchor),
            updateButton.leadingAnchor.constraint(equalTo: readButton.trailingAnchor, constant: 5),
            updateButton.heightAnchor.constraint(equalToConstant: heightButton),
            updateButton.widthAnchor.constraint(equalToConstant: widthButton),
            
            deleteButton.centerYAnchor.constraint(equalTo: createButton.centerYAnchor),
            deleteButton.leadingAnchor.constraint(equalTo: updateButton.trailingAnchor, constant: 5),
            deleteButton.heightAnchor.constraint(equalToConstant: heightButton),
            deleteButton.widthAnchor.constraint(equalToConstant: widthButton),
            
            tableView.topAnchor.constraint(equalTo: buttonContentView.bottomAnchor, constant: 20),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            
        ])
    }
}

// MARK: ACTION BUTTON

extension HomeView {
    @objc func tapAddButton(){
        presenter.buttonAddTapped()
    }
    @objc func tapDeleteButton(){
        presenter.buttonDeleteTapped()
    }
    @objc func tapButtonUnactivate(){
        presenter.ButtonUnactiveTapped()
    }
}

// MARK: TABLE VIEW

extension HomeView: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let item = presenter.items[indexPath.row]
        cell.textLabel?.text = item
        return cell
    }
    
    func afficherLegumes(_ legumes: [String]) {
            print("Données des légumes : \(legumes)")
            // Enregistrer ou afficher dans la tableView si nécessaire
        }
}


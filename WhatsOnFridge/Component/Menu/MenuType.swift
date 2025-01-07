//
//  MenuType.swift
//  WhatsOnFridge
//
//  Created by Emilien Duplaquet on 20/12/2024.
//
import UIKit

class MenuType: UIButton {
    
    lazy var menuButton: UIButton = {
        let menuButton = UIButton(type: .system)
        menuButton.setTitle("Menu", for: .normal)
        menuButton.translatesAutoresizingMaskIntoConstraints = false
        menuButton.backgroundColor = .magenta
//        menuButton.addAction(UIAction { _ in
//            print("Menu button clicked")
//        }, for: .touchUpInside)
        addSubview(menuButton)
        return menuButton
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupMenuButton()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupMenuButton()
    }
    
    private func setupMenuButton() {
        let newAction = UIAction(title: "Mon Frigo", image: UIImage(systemName: "refrigerator.fill")) { _ in
            print("Nouvelle action sélectionnée")
            
        }
        let shareAction = UIAction(title: "Mes Recettes", image: UIImage(systemName: "cooktop.fill")) { _ in
            print("Partager action sélectionnée")
        }
        let deleteAction = UIAction(title: "Liste de course", image: UIImage(systemName: "list.clipboard.fill")) { _ in
            print("Supprimer action sélectionnée")
        }
        
        // Crée le menu
        let menu = UIMenu(title: "MENU", children: [newAction, shareAction, deleteAction])
        
        // Associe le menu au bouton
        menuButton.menu = menu
        menuButton.showsMenuAsPrimaryAction = true
        
        // Contraintes
        NSLayoutConstraint.activate([
            menuButton.widthAnchor.constraint(equalToConstant: 50),
            menuButton.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
}

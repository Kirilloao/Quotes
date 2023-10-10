//
//  MainViewController.swift
//  Quotes
//
//  Created by Kirill Taraturin on 10.10.2023.
//

import UIKit

final class MainViewController: UITableViewController {

    // MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupNavigationBar()
    }
    
    // MARK: - Private Actions
    @objc private func restoreButtonDidTapped() {
        
    }
    
    // MARK: - Private func
    private func setupNavigationBar() {
        // установка title для navigationBar
        title = "Quotes"
        
        // установка цвета фона и цвена текста в navigationBar
        let navBarAppearance = UINavigationBarAppearance()
        
        navBarAppearance.backgroundColor = .black
        
        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        
        navigationController?.navigationBar.standardAppearance = navBarAppearance
        navigationController?.navigationBar.scrollEdgeAppearance = navBarAppearance
        
        // установка кнопки в rightBarButtonItem
        let restoreButton = UIBarButtonItem(
            title: "Restore",
            style: .done,
            target: self,
            action: #selector(restoreButtonDidTapped)
        )
        
        navigationItem.rightBarButtonItem = restoreButton
        
        // установка цвета кнопки
        navigationController?.navigationBar.tintColor = .white

    }
}




//
//  HomeController.swift
//  UIKitClean
//
//  Created by Øystein Günther on 13/02/2024.
//

import UIKit

final class HomeController: UIViewController {

    // MARK: - Properties
    
    lazy var navigateToSecondControllerButton: UIButton = {
        let button = UIButton(type: .system)
        button.accessibilityIdentifier = "navigateButton"
        button.addTarget(self, action: #selector(navigateToSecondControllerButtonTapped), for: .touchUpInside)
        button.setTitle("Navigate to Second Controller", for: .normal)
        self.view.addSubview(button)
        return button
    }()
    
    lazy var alertButton: UIButton = {
        let button = UIButton(type: .system)
        button.accessibilityIdentifier = "alertButton"
        button.addTarget(self, action: #selector(alertButtonTapped), for: .touchUpInside)
        button.setTitle("Alert", for: .normal)
        self.view.addSubview(button)
        return button
    }()
    
    // MARK: - Selectors
    
    @objc private func alertOkCancelbuttonTapped() {
        showAlert(title: "Alert Title", message: "A question") { /*[weak self]*/ isOk in
            
            if isOk {
                print("User tapped OK")
            } else {
                print("User tapped Cancel")
            }
        }
    }
    
    @objc private func alertButtonTapped() {
        showAlert(title: "Alert Title", message: "Some message")
    }
    
    @objc private func navigateToSecondControllerButtonTapped() {
        let secondController = SecondController()
        navigationController?.pushViewController(secondController, animated: true)
    }
    
    // MARK: - Lifecycle
    
    deinit {
        print("OS reclaiming memory for HomeController")
    }
    
    required init() {
        super.init(nibName: nil, bundle: nil)
        title = "HomeController"
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initSelf()
        initConstraints()
    }
    
    // MARK: - Helpers
    
    private func initSelf() {
        view.backgroundColor = .orange
    }
    
    private func initConstraints() {
        navigateToSecondControllerButton.anchor(top: view.topAnchor, centerX: view.centerXAnchor, paddingTop: 100, width: 300, height: 50)
        alertButton.anchor(top: navigateToSecondControllerButton.bottomAnchor, centerX: view.centerXAnchor, width: 300, height: 50)
    }
}


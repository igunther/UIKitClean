//
//  SecondController.swift
//  UIKitClean
//
//  Created by Øystein Günther on 13/02/2024.
//

import UIKit

final class SecondController: UIViewController {
    
    // MARK: - Properties
    
    lazy var headingLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.numberOfLines = 1
        label.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        label.text = "Heading"
        self.view.addSubview(label)
        return label
    }()
        
    // MARK: - Lifecycle
    
    deinit {
        print("OS reclaiming memory for SecondController")
    }
    
    init() {
        super.init(nibName: nil, bundle: nil)
        title = "Second Controller"
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
        view.backgroundColor = .red
    }
    
    private func initConstraints() {
        headingLabel.anchor(top: view.topAnchor, centerX: view.centerXAnchor, paddingTop: 100)
    }
}

//
//  +UIViewController.swift
//  UIKitClean
//
//  Created by Øystein Günther on 13/02/2024.
//

import UIKit

extension UIViewController {
    
    func showAlert(title: String, message: String, completion: ((Bool) -> Void)? = nil) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        // Add an "OK" button to the alert
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            // Call the completion handler with true when "OK" is tapped
            completion?(true)
        }
        alertController.addAction(okAction)
        
        // Add a "Cancel" button to the alert
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { _ in
            // Call the completion handler with false when "Cancel" is tapped
            completion?(false)
        }
        alertController.addAction(cancelAction)
        
        // Present the alert
        present(alertController, animated: true, completion: nil)
    }
    
    func showAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        // Add an "OK" button to dismiss the alert
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(okAction)
        
        // Present the alert
        present(alertController, animated: true, completion: nil)
    }
}


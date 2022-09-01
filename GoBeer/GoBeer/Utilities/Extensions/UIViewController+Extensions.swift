//
//  UIViewController+Extensions.swift
//  GoBeer
//
//  Created by Himanshu Juneja on 31/08/22.
//

import Foundation
import UIKit

extension UIViewController {
    
    static var className: String {
        return String(describing: self)
    }
    
    public func handleError(_ error: Error) {
        let alertVC = UIAlertController(title: AlertVariables.alertErrorTitle.rawValue, message: error.localizedDescription, preferredStyle: .alert)
        let okayAction = UIAlertAction(title: AlertVariables.cancel.rawValue, style: .cancel, handler: nil)
        alertVC.addAction(okayAction)
        present(alertVC, animated: true, completion: nil)
    }
}


//
//  UIViewController+Error.swift
//  MyNewSeries
//
//  Created by Cleís Aurora Pereira on 15/11/20.
//

import UIKit

extension UIViewController {
    func show(error: Error) {
        let alertController = UIAlertController(title: "Erro na requisição", message: error.localizedDescription, preferredStyle: .alert)

        alertController.addAction(UIAlertAction(title: "Ok", style: .default))

        present(alertController, animated: true)
    }
}

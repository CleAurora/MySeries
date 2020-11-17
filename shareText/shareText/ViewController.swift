//
//  ViewController.swift
//  shareText
//
//  Created by Cleís Aurora Pereira on 16/11/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .green // 1
        let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50)) // 2
        btn.setTitle("Compartilhar", for: UIControl.State.normal) // 3
        btn.addTarget(self, action: #selector(btnTapped), for: UIControl.Event.touchUpInside) // 4
        btn.center = self.view.center // 5
        self.view.addSubview(btn) // 6
    }

    @objc func btnTapped() { // 7
          let actVC = UIActivityViewController(activityItems: ["quero compartilhar essa mensagem"], applicationActivities: nil)
          self.present(actVC, animated: true, completion: nil)
      }

}


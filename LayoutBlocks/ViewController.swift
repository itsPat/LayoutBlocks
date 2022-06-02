//
//  ViewController.swift
//  LayoutBlocks
//
//  Created by Pat Trudel on 6/2/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupSomeView()
    }
    
    func setupSomeView() {
        let someView = UIView(frame: .zero)
        view.addSubview(someView)
        someView.backgroundColor = .red
        someView.activateConstraints {
            $0.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            $0.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            $0.widthAnchor.constraint(equalToConstant: 120)
            $0.heightAnchor.constraint(equalToConstant: 120)
        }
    }


}


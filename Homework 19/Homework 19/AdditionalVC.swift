//
//  EdditionalVC.swift
//  Homework 19
//
//  Created by salome on 12.11.23.
//

import UIKit

class AdditionalVC: UIViewController {
    
    private let textLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = .blue
        label.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        label.text = "TBC IT Academy"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        view.addSubview(textLabel)
        setupConstraints()
        setupAnimation()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            textLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            textLabel.heightAnchor.constraint(equalToConstant: 100),
            textLabel.widthAnchor.constraint(equalToConstant: 200)
            
        ])
    }
    
    private func setupAnimation() {
        UIView.animate(withDuration: 3.0, delay: 0, options: [.autoreverse, .repeat], animations: {
            self.textLabel.transform = self.textLabel.transform.rotated(by: CGFloat.pi)
            self.view.backgroundColor = .green
            
        }, completion: nil)
        
    }
}

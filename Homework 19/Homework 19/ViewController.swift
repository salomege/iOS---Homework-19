//
//  ViewController.swift
//  Homework 19
//
//  Created by salome on 12.11.23.
//

import UIKit

class ViewController: UIViewController {
    
    private let textLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = .blue
        label.backgroundColor = .white
        label.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        label.text = "TBC IT Academy"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(textLabel)
        setupConstraints()
        setupAnimation()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            textLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100),
            textLabel.heightAnchor.constraint(equalToConstant: 100),
            textLabel.widthAnchor.constraint(equalToConstant: 200)
            
        ])
    }
    
    private func setupAnimation() {
        UIView.animate(withDuration: 3.0, delay: 0, options: [.autoreverse, .repeat], animations: {
            
            self.textLabel.transform = CGAffineTransform(translationX: 0, y: 100)
            self.textLabel.alpha = 0.0
            
            
        }, completion: nil)
        
    }
}




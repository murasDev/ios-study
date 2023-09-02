//
//  IntroView.swift
//  test
//
//  Created by Murilo Castilho da Campos on 01/09/23.
//

import UIKit

final class IntroView: UIView {
    private lazy var helloLabel: UILabel = {
        let label = UILabel()
        label.text = "Hello World"
        label.font = UIFont.systemFont(ofSize: 22)
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "{MurasDev}"
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = UIColor.darkGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    init() {
        super.init(frame: .zero)
        backgroundColor = .white
        addSubview()
        constraintHelloLabel()
        constraintNameLabel()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func addSubview() {
        addSubview(helloLabel)
        addSubview(nameLabel)
    }
    
    private func constraintHelloLabel() {
        let constraint = [
            helloLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            helloLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
        ]
        
        constraint.forEach { (item) in
            item.isActive = true
        }
    }
    
    private func constraintNameLabel() {
        let constraint = [
            nameLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            nameLabel.topAnchor.constraint(equalTo: helloLabel.bottomAnchor, constant: 40)
        ]
        
        constraint.forEach { (item) in
            item.isActive = true
        }
    }
}

//
//  ProfileController.swift
//  GossipGirl
//
//  Created by Kim Page on 2/8/19.
//  Copyright © 2019 Kim Page. All rights reserved.
//

import UIKit

class ProfileController: UIViewController {
    

    let titleLabel = UILabel()
    let bodyLabel = UILabel()
    
    fileprivate func setupLabel() {
        
        titleLabel.numberOfLines = 0
        titleLabel.text = "Hey Upper East Siders."
        titleLabel.font = UIFont(name: "Futura", size: 40)
        
        bodyLabel.numberOfLines = 0
        bodyLabel.textAlignment = .justified
        bodyLabel.sizeToFit()
        bodyLabel.text = "Gossip Girl here, your one and only source into the scandalous lives of Manhattan's elite... And who am I? That's one secret I'll never tell. You know you love me. XOXO, Gossip Girl."
        
        bodyLabel.font = UIFont(name: "Futura", size: 25)
   

    }
    
    fileprivate func setupStackView() {
        let stackView = UIStackView(arrangedSubviews: [titleLabel, bodyLabel])
        stackView.axis = .vertical
        stackView.spacing = 10
        view.addSubview(stackView)
        
        
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        stackView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -100).isActive = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "profile"
        
        view.backgroundColor = .white
        
        setupLabel()
        setupStackView()
        
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(AnimationTapped)))
    }
    
    @objc fileprivate func AnimationTapped() {

        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseOut, animations: {
            
            self.titleLabel.transform = CGAffineTransform(translationX: -30, y: 0)
            
        }) { (_) in
            
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                
                self.titleLabel.alpha = 0
                self.titleLabel.transform = self.titleLabel.transform.translatedBy(x: 0, y: -200)
            })
            
        }
        
        UIView.animate(withDuration: 0.5, delay: 0.5, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseOut, animations: {
            
            self.bodyLabel.transform = CGAffineTransform(translationX: -30, y: 0)
            
        }) { (_) in
            
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                
                self.bodyLabel.alpha = 0
                self.bodyLabel.transform = self.bodyLabel.transform.translatedBy(x: 0, y: -200)
            })
            
        }
    }
}




















//
//  MainController.swift
//  GossipGirl
//
//  Created by Kim Page on 2/8/19.
//  Copyright © 2019 Kim Page. All rights reserved.
//

import UIKit
import Firebase

class MainController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = .red

        
        
        let image = UIImage(named: "logout")
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: image, style: .plain, target: self, action: #selector(handleLogout))
        
    
        if Auth.auth().currentUser?.uid == nil {
            perform(#selector(handleLogout), with: nil, afterDelay: 0)
        }
    }
    
    
    @objc func handleLogout() {
        
        do {
            try Auth.auth().signOut()
        } catch let logoutError {
            print(logoutError)
        }
        
        let loginController = LoginController()
        present(loginController, animated: true, completion: nil)
    
    }
        
        
        
        
        
        
        
        
        
        
        

    

}

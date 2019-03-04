//
//  CustomTabBarController.swift
//  GossipGirl
//
//  Created by Kim Page on 2/8/19.
//  Copyright © 2019 Kim Page. All rights reserved.
//



import UIKit

class CustomTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.tabBar.tintColor = UIColor(red: 255/255, green: 116/255, blue: 140/255, alpha: 1)
        
    
        let gossipNavBarController = UINavigationController(rootViewController: MainController())
        gossipNavBarController.tabBarItem.title = "recent"
        gossipNavBarController.tabBarItem.image = UIImage(named: "recent")
        
        
        
        let peopleTableController = UINavigationController(rootViewController: PeopleTableController())
        
       peopleTableController.tabBarItem.title = "people"
        
        peopleTableController.tabBarItem.image = UIImage(named: "people")
        
        
        
        
        let profileController = UINavigationController(rootViewController: ProfileController())
        
        profileController.tabBarItem.title = "profile"
        
        profileController.tabBarItem.image = UIImage(named: "profile")
        
        
        
        
        let settingController = UINavigationController(rootViewController:
            SettingController())
        
        settingController.tabBarItem.title = "settings"
        
        settingController.tabBarItem.image = UIImage(named: "settings")
        
        
        
        viewControllers = [gossipNavBarController, peopleTableController, profileController, settingController]
        
        
    }
    
    
    
    
    private func navigationControllerWithTitle(title: String, imageName: String) -> UINavigationController {
        let viewController = UIViewController()
        let navigationController = UINavigationController(rootViewController: viewController)
        navigationController.tabBarItem.title = title
        navigationController.tabBarItem.image = UIImage(named: imageName)
        return navigationController
    }
    
    
    
    
    
}

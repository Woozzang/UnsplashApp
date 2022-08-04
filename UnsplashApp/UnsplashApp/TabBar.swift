//
//  TabBar.swift
//  UnsplashApp
//
//  Created by Park Woo Chan on 2022/06/29.
//

import UIKit

class TabBar: UITabBarController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let searchVC = SearchViewController()
        
        searchVC.tabBarItem = UITabBarItem(title: "Search", image: UIImage(systemName: "magnifyingglass"), selectedImage: nil)
        
        let profileVC = ProfileViewController()
        
        profileVC.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(systemName: "person"), selectedImage: nil)
        
        self.setViewControllers([searchVC, profileVC], animated: false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tabBar.backgroundColor = .white
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension TabBar: UITabBarControllerDelegate {
//    did
}

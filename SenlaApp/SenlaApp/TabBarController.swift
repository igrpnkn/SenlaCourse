//
//  TabBarController.swift
//  SenlaApp
//
//  Created by Igor Penkin on 26.03.2022.
//

import UIKit

class TabBarController: UITabBarController {

    
    convenience init() {
        self.init(nibName: nil, bundle: nil)
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.isOpaque = true
        tabBar.tintColor = .black
        tabBar.unselectedItemTintColor = .systemBlue
        tabBar.backgroundColor = .systemYellow
        setupTabBar()
    }
}

private extension TabBarController {
    
    func setupTabBar() {
        let navCContent = NavigationController(
            rootViewController: ContentViewController()
        )
        let navCInfo = NavigationController(
            rootViewController: InfoViewController()
        )
        
        let configuration = UIImage.SymbolConfiguration(
            pointSize: 24, weight: .semibold
        )
        navCContent.tabBarItem = UITabBarItem(
            title: "Content",
            image: UIImage(
                systemName: "paperplane",
                withConfiguration: configuration
            ),
            tag: 1
        )
        navCInfo.tabBarItem.selectedImage = UIImage(systemName: "paperplane.fill")
        
        navCInfo.tabBarItem = UITabBarItem(
            title: "Info",
            image: UIImage(
                systemName: "pencil.circle",
                withConfiguration: configuration
            ),
            tag: 1)
        navCInfo.tabBarItem.selectedImage = UIImage(systemName: "pencil.circle.fill")
        
        setViewControllers([
            navCContent, navCInfo
        ], animated: false)
    }
}
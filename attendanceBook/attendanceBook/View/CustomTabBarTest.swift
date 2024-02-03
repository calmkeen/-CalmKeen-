//
//  CustomTabBarTest.swift
//  attendanceBook
//
//  Created by calmkeen on 2023/04/16.
//

import UIKit

class tabBarViewTest: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func setupTabBarControl(){
        let memberTab = MemeverViewController()
        
        let GroupTab = GroupViewController()
        
        let Setting = SettingViewController()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    private func setupUITabBar() {
//        tabBar.tintColor = UIColor.mainColor
        tabBar.backgroundColor = UIColor(named:"TabBarColor")

        tabBar.layer.cornerRadius = tabBar.frame.height * 0.41
        tabBar.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
    }
    
    
}

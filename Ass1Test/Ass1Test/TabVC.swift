//
//  TabVC.swift
//  Ass1Test
//
//  Created by user157372 on 2020-04-17.
//  Copyright © 2020 user157372. All rights reserved.
//

import Foundation
import UIKit

class TabVC: UITabBarController, UITabBarControllerDelegate
{
    var tableVC = TableVC()
    var collectionVC = CollectionVC(collectionViewLayout: UICollectionViewFlowLayout())
    /*
     CONTAINER VIEW
        - USED TO HOLD SEVERAL VIEW CONTROLLERS AT A TIME
     */
    override func viewDidLoad() {
        
        tableVC.tabBarItem = UITabBarItem(title: "Table", image: UIImage(named: "cameraIcon"), tag: 0)
        collectionVC.tabBarItem = UITabBarItem(title: "Collection", image: UIImage(named: "profileIcon"), tag: 1)
        
        self.viewControllers = [NavVC(rootViewController: tableVC), NavVC(rootViewController: collectionVC)]
        
        self.tabBar.barStyle = .black
        self.tabBar.barTintColor = .black
    }
}

//
//  TabBarController.swift
//  Michigan Connect
//
//  Created by Pablo Segovia on 8/14/23.
//

import UIKit

class TabBarCon: UITabBarController {
    
    @IBInspectable var initialIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selectedIndex = initialIndex
    }
}

//
//  TabBarController.swift
//  CollectionViewHeaderTest
//
//  Created by iMac on 2022/05/02.
//

import Foundation
import UIKit
import SnapKit

class TabBarController: UITabBarController {
    private lazy var mainViewControllers: [UIViewController] = TabMenus.allCases.map {
        let viewController = $0.viewController
        viewController.tabBarItem = UITabBarItem(
            title: $0.title,
            image: $0.icon.default,
            selectedImage: $0.icon.selected
        )
        return viewController
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        viewControllers = mainViewControllers
    }
}

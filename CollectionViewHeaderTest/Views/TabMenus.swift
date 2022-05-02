//
//  TabMenus.swift
//  CollectionViewHeaderTest
//
//  Created by iMac on 2022/05/02.
//

import Foundation
import UIKit

enum TabMenus: CaseIterable {
    case main
    case second
    case third

    var title: String {
        switch self {
        case .main:
            return "Main"
        case .second:
            return "Second"
        case .third:
            return "Third"
        }
    }

    var icon: (default: UIImage, selected: UIImage) {
        switch self {
        case .main:
            return (
                default: UIImage(systemName: "house") ?? UIImage(),
                selected: UIImage(systemName: "house.fill") ?? UIImage()
            )
        case .second:
            return (
                default: UIImage(systemName: "house") ?? UIImage(),
                selected: UIImage(systemName: "house.fill") ?? UIImage()
            )
        case .third:
            return (
                default: UIImage(systemName: "house") ?? UIImage(),
                selected: UIImage(systemName: "house.fill") ?? UIImage()
            )
        }
    }

    var viewController: UIViewController {
        switch self {
        case .main:
            return MainViewController()
        case .second:
            return UIViewController()
        case .third:
            return UIViewController()
        }
    }
}

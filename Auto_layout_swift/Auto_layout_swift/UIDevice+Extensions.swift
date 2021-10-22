//
//  UIDevice+Extensions.swift
//  Auto_layout_swift
//
//  Created by Trung Dang on 21/10/2021.
//

import Foundation
import UIKit

extension UIDevice {
    static func setSize(iPhone: CGFloat, iPad: CGFloat) -> CGFloat {
        switch UIDevice.current.userInterfaceIdiom {
            case .phone:
                return iPhone
            case .pad:
                return iPad
            default:
                return 0
        }
    }
}

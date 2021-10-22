//
//  UIStackView+extensions.swift
//  Auto_layout_swift
//
//  Created by Trung Dang on 21/10/2021.
//

import Foundation
import UIKit

extension UIStackView {
    func changeBackgroundColor(color: UIColor) {
        let backgroundLayer = CAShapeLayer()
        self.layer.insertSublayer(backgroundLayer, at: 0)
        backgroundLayer.path = UIBezierPath(rect: self.bounds).cgPath
        backgroundLayer.fillColor = color.cgColor
    }
}

//
//  UILabel+Extention.swift
//  Auto_layout_swift
//
//  Created by Trung Dang on 21/10/2021.
//

import Foundation
import UIKit


extension UILabel {
    convenience init(text: String?, fontSize: CGFloat, parentStackView: UIStackView) {
        self.init()
        self.translatesAutoresizingMaskIntoConstraints = false
        self.text = text
        self.font = self.font?.withSize(fontSize)
        parentStackView.addArrangedSubview(self)
    }
}

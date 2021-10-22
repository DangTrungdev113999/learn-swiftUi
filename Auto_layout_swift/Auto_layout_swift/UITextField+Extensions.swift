//
//  UITextField+Extensions.swift
//  Auto_layout_swift
//
//  Created by Trung Dang on 21/10/2021.
//

import Foundation
import UIKit

extension UITextField {
    convenience init(placeholder: String?, fontSize: CGFloat, borderStyle: UITextField.BorderStyle, parentStackView: UIStackView) {
        self.init()
        self.translatesAutoresizingMaskIntoConstraints = false
        self.placeholder = placeholder
        self.font = self.font?.withSize(fontSize)
        self.borderStyle = borderStyle
        parentStackView.addArrangedSubview(self)
    }
}

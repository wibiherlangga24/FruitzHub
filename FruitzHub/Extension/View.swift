//
//  View.swift
//  FruitzHub
//
//  Created by Herlangga Wibi on 05/11/23.
//

import UIKit

extension UIView {
    func setupRoundedView(borderWidth: CGFloat, borderColor: UIColor, cornerRadius: CGFloat, backgroundColor: UIColor) {
        self.layer.borderWidth = borderWidth
        self.layer.borderColor = borderColor.cgColor
        self.layer.cornerRadius = cornerRadius
        self.backgroundColor = backgroundColor
        self.clipsToBounds = true
    }
    
    func applyShadow(cornerRadius: CGFloat, isBottomOnly: Bool = false) {
        layer.cornerRadius = cornerRadius
        layer.masksToBounds = false
        layer.shadowRadius = isBottomOnly ? 1 : 2
        layer.shadowOpacity = isBottomOnly ? 0.3 : 0.7
        layer.shadowColor = UIColor.lightGray.cgColor
        layer.shadowOffset = CGSize(width: 0, height: isBottomOnly ? 2 : 0)
    }
}

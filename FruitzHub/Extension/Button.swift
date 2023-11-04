//
//  Button.swift
//  FruitzHub
//
//  Created by Herlangga Wibi on 04/11/23.
//

import UIKit

extension UIButton {
    
    func setupColourButton(fontSize: CGFloat, fontType: FontType, text: String, titleColor: UIColor, selectedColor: UIColor, backgroundColor: UIColor, cornerRadius: CGFloat = 8) {
        let customFont = UIFont().setupFont(size: fontSize, fontType: fontType)
        self.titleLabel?.font = customFont
        self.setTitleColor(titleColor, for: .normal)
        self.setTitle(text, for: .normal)
        self.backgroundColor = backgroundColor
        self.tintColor = backgroundColor
        self.layer.cornerRadius = cornerRadius
    }
    
    func addShadow(color: UIColor, radius: CGFloat, opacity: Float) {
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        self.layer.shadowRadius = 5
        self.layer.shadowOpacity = 0.5
        self.layer.masksToBounds = false
    }
}

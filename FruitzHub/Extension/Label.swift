//
//  Label.swift
//  FruitzHub
//
//  Created by Herlangga Wibi on 04/11/23.
//

import UIKit

extension UILabel {
    
    func setupLabel(size: CGFloat, fontType: FontType, text: String, color: UIColor, aligntment: NSTextAlignment) {
        assignFont(size: size, fontType: fontType)
        setupAppereance(text: text, color: color, alignment: aligntment)
    }
    
    private func assignFont(size: CGFloat, fontType: FontType) {
        let customFont = UIFont().setupFont(size: size, fontType: fontType)
        self.font = UIFontMetrics.default.scaledFont(for: customFont)
    }
    
    private func setupAppereance(text: String, color: UIColor, alignment: NSTextAlignment) {
        self.text = text
        self.textColor = color
        self.textAlignment = alignment
        self.adjustsFontForContentSizeCategory = true
    }
    
}

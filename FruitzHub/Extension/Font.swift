//
//  Font.swift
//  FruitzHub
//
//  Created by User on 04/11/23.
//

import UIKit

enum FontType: String {
    case bold = "HvDTrial_BrandonGrotesque-Bold"
    case medium = "HvDTrial_BrandonGrotesque-Medium"
    case regular = "HvDTrial_BrandonGrotesque-Regular"
}

extension UIFont {
    func setupFont(size: CGFloat, fontType: FontType) -> UIFont {
        guard let customFont = UIFont(name: fontType.rawValue, size: size) else {
            fatalError("""
                Failed to load the "CustomFont" font.
                """
            )
        }

        return customFont
    }
}

//
//  MealItemCardCell.swift
//  FruitzHub
//
//  Created by Herlangga Wibi on 04/11/23.
//

import UIKit

protocol ReusableView {
    static var identifier: String { get }
}

class MealItemCardCell: UICollectionViewCell {
    
    @IBOutlet weak var cardItem: UIView!
    @IBOutlet weak var imageItem: UIImageView!
    @IBOutlet weak var priceItem: UILabel!
    @IBOutlet weak var titleItem: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        applyShadow(cornerRadius: 8, isBottomOnly: true)
    }
    
    static func registerNib() -> UINib {
        return UINib(nibName: String(describing: self), bundle: nil)
    }
    
    func setupCell(product: Product) {
        cardItem.setupRoundedView(borderWidth: 1, borderColor: UIColor.clear, cornerRadius: 8, backgroundColor: .white)
        imageItem.image = UIImage(named: product.image)
        priceItem.setupLabel(size: 14, fontType: .regular, text: product.price, color: Constants.Color.primary, aligntment: .left)
        titleItem.setupLabel(size: 16, fontType: .medium, text: product.title, color: .black, aligntment: .center)
    }
}

extension MealItemCardCell: ReusableView {
    static var identifier: String {
        return String(describing: self)
    }
}

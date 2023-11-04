//
//  ProductSectionTVC.swift
//  FruitzHub
//
//  Created by Herlangga Wibi on 05/11/23.
//

import UIKit

class ProductSectionTVC: UITableViewCell {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var products: [Product] = []
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        selectionStyle = .none
    }
    
    static func registerNib() -> UINib {
        return UINib(nibName: String(describing: self), bundle: nil)
    }
    
    func setupCell(products: [Product]) {
        self.products = products
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(MealItemCardCell.registerNib(), forCellWithReuseIdentifier: MealItemCardCell.identifier)
    }
}

extension ProductSectionTVC: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MealItemCardCell.identifier, for: indexPath) as! MealItemCardCell
        cell.setupCell(product: products[indexPath.item])
        return cell
    }
}

extension ProductSectionTVC: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 152, height: 183)
    }
}

extension ProductSectionTVC: ReusableView {
    static var identifier: String {
        return String(describing: self)
    }
}

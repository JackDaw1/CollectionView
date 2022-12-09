//
//  NumberCell.swift
//  CollectionView
//
//  Created by Galina Iaroshenko on 08.12.2022.
//

import UIKit

class NumberCell: UICollectionViewCell {
    @IBOutlet private var numberLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.contentView.layer.borderColor = UIColor.gray.cgColor
        self.contentView.layer.borderWidth = 1
    }
    
    func update(from number: Int) {
        self.numberLabel.text = "\(number)"

    }
    
}

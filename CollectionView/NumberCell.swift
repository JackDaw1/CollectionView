//
//  NumberCell.swift
//  CollectionView
//
//  Created by Galina Iaroshenko on 08.12.2022.
//

import UIKit

class NumberCell: UICollectionViewCell {
    //@IBOutlet var numberLabel: UILabel!
    @IBOutlet  var imageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        //self.contentView.layer.borderColor = UIColor.gray.cgColor
        //self.contentView.layer.borderWidth = 1
    }
    /*
    func update(from number: Int) {
        self.numberLabel.text = "\(number)"

    }
     */
    
    func configure(by image: UIImage) {
            imageView.image = image
            //countLabel.text = "\(count)"
        }

}

/*
extension NumberCell: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let itemsPerRow: CGFloat = 4
        let paddingWidth = 20 * (itemsPerRow + 1)
        let availableWidth = collectionView.frame.width - paddingWidth
        let widthPerItem = availableWidth / itemsPerRow
        return CGSize(width: widthPerItem, height: widthPerItem)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
    
    
}
*/

//
//  Collection+Extension.swift
//  CollectionView
//
//  Created by Galina Iaroshenko on 09.12.2022.
//

import UIKit

extension UICollectionView {
    
    func register<T: UICollectionViewCell>(for classType: T.Type) {
        let name = "\(classType)"
        let nib = UINib(nibName: name, bundle: Bundle.main)
        self.register(nib, forCellWithReuseIdentifier: name)
    }
    
    func dequeueReusableCellM<T: UICollectionViewCell> (for classType: T.Type, for indexPath: IndexPath) -> T{
        return dequeueReusableCell(withReuseIdentifier: "\(classType)", for: indexPath) as! T
    }
    
    
}

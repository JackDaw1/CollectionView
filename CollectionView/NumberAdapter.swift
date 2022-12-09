//
//  NumberAdapter.swift
//  CollectionView
//
//  Created by Galina Iaroshenko on 09.12.2022.
//

import UIKit

class NumberAdapter:NSObject {
    var numbers: [Int] = (1...15).map{ $0 }
    
    func setup(for collectionView: UICollectionView) {
        collectionView.register(for: NumberCell.self)
        collectionView.dataSource = self
        collectionView.delegate = self
    }
}

extension NumberAdapter: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return numbers.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellM(for: NumberCell.self, for: indexPath)
        let number = numbers[indexPath.item]
        cell.update(from: number)
        return cell
    }

}

extension NumberAdapter: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, canMoveItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func collectionView(_ collectionView: UICollectionView, moveItemAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        numbers.swapAt(sourceIndexPath.item, destinationIndexPath.item)
    }
    
    func collectionView(_ collectionView: UICollectionView, targetIndexPathForMoveOfItemFromOriginalIndexPath originalIndexPath: IndexPath, atCurrentIndexPath currentIndexPath: IndexPath, toProposedIndexPath proposedIndexPath: IndexPath) -> IndexPath {
        return proposedIndexPath
    }
    
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        print("Drag")
    }
}

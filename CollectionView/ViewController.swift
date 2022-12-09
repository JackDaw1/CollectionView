//
//  ViewController.swift
//  CollectionView
//
//  Created by Galina Iaroshenko on 07.12.2022.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource {
    
    
    let numbers: [Int] = (1...15).map{ $0 }
    
    
    @IBOutlet var collectionView: UICollectionView!
    /*
    var myCollectionView:UICollectionView?
       */
        override func viewDidLoad() {
            super.viewDidLoad()
            
        }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return numbers.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! NumberCell
        let number = numbers[indexPath.item]
        cell.numberLabel.text = "\(number)"
        cell.contentView.layer.borderColor = UIColor.gray.cgColor
        cell.contentView.layer.borderWidth = 1
        return cell
    }
    
}



//
//  ViewController.swift
//  CollectionView
//
//  Created by Galina Iaroshenko on 07.12.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let adapter = NumberAdapter()
    
    
    @IBOutlet var collectionView: UICollectionView!
    
    
        override func viewDidLoad() {
            super.viewDidLoad()
            adapter.setup(for: collectionView)
            collectionView.reloadData()
        }
    
}


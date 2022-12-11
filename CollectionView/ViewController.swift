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
            
            /*
            let currentBundle = Bundle(for: ViewController.self)
            let image = UIImage(named: "1", in: currentBundle, with: .none)
            //let image = UIImage(named: "meme")
            let imageView = UIImageView(image: image!)
            imageView.frame = CGRect(x: 0, y: 100, width: 400, height: 600)
            view.addSubview(imageView)
            */
            
            adapter.setup(for: collectionView)
            collectionView.reloadData()
        }
    
}


/*
extension ViewController: UICollectionViewDelegateFlowLayout {
    
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

//
//  CollectionVC.swift
//  Ass1Test
//
//  Created by user157372 on 2020-04-17.
//  Copyright © 2020 user157372. All rights reserved.
//

import Foundation
import UIKit

class CollectionVC: UICollectionViewController
{
    override func viewDidLoad() {
 
        self.collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: "CollectionViewCell")
        self.collectionView.backgroundColor = .white
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath)
        
        return cell
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row > 0 {
            present(TableVC(), animated: true, completion: nil)
        }
    }
    
    
}

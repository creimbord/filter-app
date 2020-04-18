//
//  PhoneDataSource.swift
//  FilterApp
//
//  Created by Родион on 17.04.2020.
//  Copyright © 2020 Родион. All rights reserved.
//

import UIKit

final class PhoneDataSource: NSObject {
    
    // MARK: - Properties
    weak var collectionView: UICollectionView?
    var phones = [Phone]()
    
    init(collectionView: UICollectionView) {
        super.init()
        collectionView.delegate = self
        collectionView.dataSource = self
        self.collectionView = collectionView
    }
}

// MARK: - Methods
extension PhoneDataSource {
    func reload(phones: [Phone]) {
        self.phones = phones
        collectionView?.reloadData()
    }
}

// MARK: - UICollectionViewDataSource
extension PhoneDataSource: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return phones.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
}

// MARK: - UICollectionViewDelegate
extension PhoneDataSource: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(
            width:  (collectionView.frame.width / 2) - 16,
            height: (collectionView.frame.width / 2) - 16
        )
    }
}

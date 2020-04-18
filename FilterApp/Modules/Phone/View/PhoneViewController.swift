//
//  PhoneViewController.swift
//  FilterApp
//
//  Created by Родион on 16.04.2020.
//  Copyright © 2020 Родион. All rights reserved.
//

import UIKit

class PhoneViewController: UIViewController, Storyboarded {
    
    // MARK: - Properties
    var presenter: PhonePresenter!
    
    // MARK: - Outlets
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Actions
    @IBAction func openFilter(_ sender: UIBarButtonItem) {
        presenter.showFilterModule()
    }
}

// MARK: - PhoneViewProtocol
extension PhoneViewController: PhoneViewProtocol {    
    var dataSource: PhoneDataSource {
        PhoneDataSource(collectionView: collectionView)
    }
}

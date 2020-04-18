//
//  PhonePresenter.swift
//  FilterApp
//
//  Created by Родион on 16.04.2020.
//  Copyright © 2020 Родион. All rights reserved.
//

import UIKit

protocol PhoneViewProtocol: AnyObject {
    var dataSource: PhoneDataSource { get }
}

protocol PhoneViewPresenterProtocol {
    init(view: PhoneViewProtocol)
    func showFilterModule()
}

class PhonePresenter: PhoneViewPresenterProtocol {
    unowned let view: PhoneViewProtocol
    
    required init(view: PhoneViewProtocol) {
        self.view = view
    }
}

// MARK: - Navigation
extension PhonePresenter {
    func showFilterModule() {
        //
    }
}

// MARK: - DataSource
extension PhonePresenter {
    func reloadCollectionView() {
        // TODO: Data Provider Data
        view.dataSource.reload(phones: [Phone]())
    }
}

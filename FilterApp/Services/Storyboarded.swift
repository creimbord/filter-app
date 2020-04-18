//
//  Storyboarded.swift
//  FilterApp
//
//  Created by Родион on 18.04.2020.
//  Copyright © 2020 Родион. All rights reserved.
//

import UIKit

protocol Storyboarded {
    static func instantiate(with storyboard: UIStoryboard) -> Self
}

extension Storyboarded where Self: UIViewController {
    static func instantiate(with storyboard: UIStoryboard) -> Self {
        let id = String(describing: self)
        return storyboard.instantiateViewController(withIdentifier: id) as! Self
    }
}

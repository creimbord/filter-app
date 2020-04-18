//
//  Coordinator.swift
//  FilterApp
//
//  Created by Родион on 18.04.2020.
//  Copyright © 2020 Родион. All rights reserved.
//

import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}

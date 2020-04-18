//
//  Phone.swift
//  FilterApp
//
//  Created by Родион on 16.04.2020.
//  Copyright © 2020 Родион. All rights reserved.
//

import Foundation

typealias Model      = String
typealias Price      = Int
typealias ScreenSize = Double
typealias Processor  = String
typealias Memory     = Int
typealias DiskSpace  = Int
typealias Color      = String

struct Phone {
    let model:      Model
    let price:      Price
    let screenSize: ScreenSize
    let processor:  Processor
    let memory:     Memory
    let diskSpace:  DiskSpace
    let color:      Color
}

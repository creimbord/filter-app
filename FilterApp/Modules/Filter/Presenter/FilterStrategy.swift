//
//  FilterStrategy.swift
//  FilterApp
//
//  Created by Родион on 17.04.2020.
//  Copyright © 2020 Родион. All rights reserved.
//

import Foundation

class Filter {
    private var strategy: FilterStrategy
    
    init(strategy: FilterStrategy) {
        self.strategy = strategy
    }
    
    func update(strategy: FilterStrategy) {
        self.strategy = strategy
    }
    
    func applyFilters(to phones: [Phone], withSpecs specs: [Any]) -> [Phone] {
        return strategy.filter(phones: phones, by: specs)
    }
}

// MARK: - FilterStrategy
protocol FilterStrategy {
    func filter(phones: [Phone], by specs: [Any]) -> [Phone]
}

// MARK: - ModelFilter
class ModelFilter: FilterStrategy {
    func filter(phones: [Phone], by specs: [Any]) -> [Phone] {
        let modelSpecs = specs.compactMap { $0 as? Model }
        var filteredPhones = [Phone]()
        
        modelSpecs.forEach { (model) in
            filteredPhones += phones.filter { (phone) -> Bool in
                return phone.model == model
            }
        }
        
        return filteredPhones
    }
}

// MARK: - PriceFilter
class PriceFilter: FilterStrategy {
    func filter(phones: [Phone], by specs: [Any]) -> [Phone] {
        let priceSpecs = specs.compactMap { $0 as? Price }
        var filteredPhones = [Phone]()
        
        priceSpecs.forEach { (price) in
            filteredPhones += phones.filter { (phone) -> Bool in
                return phone.price == price
            }
        }
        
        return filteredPhones
    }
}

// MARK: - ScreenSizeFilter
class ScreenSizeFilter: FilterStrategy {
    func filter(phones: [Phone], by specs: [Any]) -> [Phone] {
        let screenSizeSpecs = specs.compactMap { $0 as? ScreenSize }
        var filteredPhones = [Phone]()
        
        screenSizeSpecs.forEach { (screenSize) in
            filteredPhones += phones.filter { (phone) -> Bool in
                return phone.screenSize == screenSize
            }
        }
        
        return filteredPhones
    }
}

// MARK: - ProcessorFilter
class ProcessorFilter: FilterStrategy {
    func filter(phones: [Phone], by specs: [Any]) -> [Phone] {
        let processorSpecs = specs.compactMap { $0 as? Processor }
        var filteredPhones = [Phone]()
        
        processorSpecs.forEach { (processor) in
            filteredPhones += phones.filter { (phone) -> Bool in
                return phone.processor == processor
            }
        }
        
        return filteredPhones
    }
}

// MARK: - MemoryFilter
class MemoryFilter: FilterStrategy {
    func filter(phones: [Phone], by specs: [Any]) -> [Phone] {
        let memorySpecs = specs.compactMap { $0 as? Memory }
        var filteredPhones = [Phone]()
        
        memorySpecs.forEach { (memory) in
            filteredPhones += phones.filter { (phone) -> Bool in
                return phone.memory == memory
            }
        }
        
        return filteredPhones
    }
}

// MARK: - DiskSpaceFilter
class DiskSpaceFilter: FilterStrategy {
    func filter(phones: [Phone], by specs: [Any]) -> [Phone] {
        let diskSpaceSpecs = specs.compactMap { $0 as? DiskSpace }
        var filteredPhones = [Phone]()
        
        diskSpaceSpecs.forEach { (diskSpace) in
            filteredPhones += phones.filter { (phone) -> Bool in
                return phone.diskSpace == diskSpace
            }
        }
        
        return filteredPhones
    }
}

// MARK: - ColorFilter
class ColorFilter: FilterStrategy {
    func filter(phones: [Phone], by specs: [Any]) -> [Phone] {
        let colorSpecs = specs.compactMap { $0 as? Color }
        var filteredPhones = [Phone]()
        
        colorSpecs.forEach { (color) in
            filteredPhones += phones.filter { (phone) -> Bool in
                return phone.color == color
            }
        }
        
        return filteredPhones
    }
}

//
//  FilterDecorator.swift
//  FilterApp
//
//  Created by Родион on 17.04.2020.
//  Copyright © 2020 Родион. All rights reserved.
//

import Foundation

protocol PhoneFilter {
    func filter(phones: [Phone], by specs: [Any]) -> [Phone]
}

// MARK: - BaseFilter
class PhoneBaseFilter: PhoneFilter {
    func filter(phones: [Phone], by specs: [Any]) -> [Phone] {
        return phones
    }
}

// MARK: - Base Deacorator
class PhoneFilterDecorator: PhoneFilter {
    private let phoneFilter: PhoneFilter
    
    init(phoneFilter: PhoneFilter) {
        self.phoneFilter = phoneFilter
    }
    
    func filter(phones: [Phone], by specs: [Any]) -> [Phone] {
        return phoneFilter.filter(phones: phones, by: specs)
    }
}

// MARK: - PhoneModelFilter
class PhoneModelFilter: PhoneFilterDecorator {
    override func filter(phones: [Phone], by specs: [Any]) -> [Phone] {
        let filter         = Filter(strategy: ModelFilter())
        let appliedFilter  = super.filter(phones: phones, by: specs)
        let filteredPhones = filter.applyFilters(to: appliedFilter, withSpecs: specs)
        
        return filteredPhones
    }
}

// MARK: - PhonePriceFilter
class PhonePriceFilter: PhoneFilterDecorator {
    override func filter(phones: [Phone], by specs: [Any]) -> [Phone] {
        let filter         = Filter(strategy: PriceFilter())
        let appliedFilter  = super.filter(phones: phones, by: specs)
        let filteredPhones = filter.applyFilters(to: appliedFilter, withSpecs: specs)
        
        return filteredPhones
    }
}

// MARK: - PhoneScreenSizeFilter
class PhoneScreenSizeFilter: PhoneFilterDecorator {
    override func filter(phones: [Phone], by specs: [Any]) -> [Phone] {
        let filter         = Filter(strategy: ScreenSizeFilter())
        let appliedFilter  = super.filter(phones: phones, by: specs)
        let filteredPhones = filter.applyFilters(to: appliedFilter, withSpecs: specs)
        
        return filteredPhones
    }
}

// MARK: - PhoneProcessorFilter
class PhoneProcessorFilter: PhoneFilterDecorator {
    override func filter(phones: [Phone], by specs: [Any]) -> [Phone] {
        let filter         = Filter(strategy: ProcessorFilter())
        let appliedFilter  = super.filter(phones: phones, by: specs)
        let filteredPhones = filter.applyFilters(to: appliedFilter, withSpecs: specs)
        
        return filteredPhones
    }
}

// MARK: - PhoneMemoryFilter
class PhoneMemoryFilter: PhoneFilterDecorator {
    override func filter(phones: [Phone], by specs: [Any]) -> [Phone] {
        let filter         = Filter(strategy: MemoryFilter())
        let appliedFilter  = super.filter(phones: phones, by: specs)
        let filteredPhones = filter.applyFilters(to: appliedFilter, withSpecs: specs)
        
        return filteredPhones
    }
}

// MARK: - PhoneDiskSpaceFilter
class PhoneDiskSpaceFilter: PhoneFilterDecorator {
    override func filter(phones: [Phone], by specs: [Any]) -> [Phone] {
        let filter         = Filter(strategy: DiskSpaceFilter())
        let appliedFilter  = super.filter(phones: phones, by: specs)
        let filteredPhones = filter.applyFilters(to: appliedFilter, withSpecs: specs)
        
        return filteredPhones
    }
}

// MARK: - PhoneColorFilter
class PhoneColorFilter: PhoneFilterDecorator {
    override func filter(phones: [Phone], by specs: [Any]) -> [Phone] {
        let filter         = Filter(strategy: ColorFilter())
        let appliedFilter  = super.filter(phones: phones, by: specs)
        let filteredPhones = filter.applyFilters(to: appliedFilter, withSpecs: specs)
        
        return filteredPhones
    }
}

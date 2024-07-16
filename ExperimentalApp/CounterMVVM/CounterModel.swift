//
//  CounterModel.swift
//  ExperimentalApp
//
//  Created by Andreas Antonsson on 2024-07-16.
//

import Foundation

struct CounterModel {
    var counter = 0
    var isPremium = false
    
    mutating func increment() {
        counter += 1
        
        isPremium = counter.isMultiple(of: 3) ? true : false
    }
    
    mutating func decrement() {
        counter -= 1
    }
    
}

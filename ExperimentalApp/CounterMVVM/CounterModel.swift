//
//  CounterModel.swift
//  ExperimentalApp
//
//  Created by Andreas Antonsson on 2024-07-16.
//

import Foundation

struct CounterModel {
    var counter = 0
    
    mutating func increment() {
        counter += 1
    }
    
    mutating func decrement() {
        counter -= 1
    }
}

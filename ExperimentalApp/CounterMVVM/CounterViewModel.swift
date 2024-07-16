//
//  CounterViewModel.swift
//  ExperimentalApp
//
//  Created by Andreas Antonsson on 2024-07-16.
//

import Foundation

class CounterViewModel: ObservableObject {
    @Published var counterModel: CounterModel = CounterModel()
    
    var value: Int {
        counterModel.counter
    }
    
    func incrementValue() {
        counterModel.increment()
    }
    
    func decrementValue() {
        counterModel.decrement()
    }
}

//
//  StateView.swift
//  ExperimentalApp
//
//  Created by Andreas Antonsson on 2024-07-03.
//

import SwiftUI

struct CounterView: View {
    @ObservedObject var viewModel: CounterViewModel
    
    init(viewModel: CounterViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack {
            Text(viewModel.isPremium ? "PREMIUM" : "")
                .font(.title)
                .foregroundStyle(.cyan)
            
            Text("\(viewModel.value)")
            
            Button(action: {
                  if viewModel.value < 10 { viewModel.incrementValue() }
            }, label: {
                Text("Increment")
                    .foregroundStyle(.black)
            })
            .padding()
            .background(.yellow)
            .cornerRadius(8)
            
            Button(action: {
                if viewModel.value > 0 { viewModel.decrementValue() }
            }, label: {
                Text("Decrement")
                    .foregroundStyle(.white)
            })
            .padding()
            .background(.red)
            .cornerRadius(8)
            
        }
        .padding()
    }
}

#Preview {
    CounterView(viewModel: CounterViewModel())
}

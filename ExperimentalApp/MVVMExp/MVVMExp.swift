//
//  MVVMExp.swift
//  ExperimentalApp
//
//  Created by Andreas Antonsson on 2024-07-15.
//

import SwiftUI

class ViewAdapter: ObservableObject {
    @Published var myString = ""
    @Published var viewModel: MVVMExp.ViewModel?
    
    func generateViewModel() {
        self.viewModel = .init(myString: "ViewModel message - We have a ViewModel!")
    }
}

struct MVVMExp: View {
    @StateObject var vm = ViewAdapter()
    @State var message = "Default message"
    
    var body: some View {
        
        if let viewModel = vm.viewModel {
            
            VStack {
                Text(message)
                
                Button(action: {
                    message = vm.viewModel?.myString ?? "no viewModel"
                    print(message)
                }, label: {
                    Text("VM-Action")
                })
            }
            
        } else {
            ProgressView()
                .onAppear(perform: {
                    vm.generateViewModel()
            })
        }
    }
    
    struct ViewModel {
        let myString: String
    }
}

#Preview {
    MVVMExp()
}

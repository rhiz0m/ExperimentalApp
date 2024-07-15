//
//  BasicAsyncFunction.swift
//  ExperimentalApp
//
//  Created by Andreas Antonsson on 2024-07-15.
//

import SwiftUI

struct BasicAsyncFunction: View {
    @State var sumStructedConc = 0
    @State var sumCallbackBasedConc = 0
    
    var body: some View {
        VStack(spacing: 16)  {
          Text("Structed Concurrency \(sumStructedConc)")
            Button(action: {
              Task {
                  sumStructedConc = await asyncStructuredConcurrency()
              }
          }, label: {
              Text("Structed Concurrency")
                  .padding()
                  .background(.yellow)
                  .cornerRadius(8)
          })
          
          Text("Callback-Based Concurrency \(sumCallbackBasedConc)")
            Button(action: {
                asyncCallbackBasedConcurrency { result in
                    sumCallbackBasedConc = result
                }
                
            }, label: {
                Text("Callback-Based Concurrency")
                    .padding()
                    .background(.orange)
                    .cornerRadius(8)
            })
        }
    }
    
    func sum(_ num: Int,_ num2: Int) -> Int {
        num * num2
    }
    
    func asyncStructuredConcurrency() async -> Int {
        try? await Task.sleep(nanoseconds: 2_000_000_000) // 3 seconds
       return sum(2, 4)
    }
    
    func asyncCallbackBasedConcurrency(completion: @escaping (Int) -> Void) {
        DispatchQueue.global().async {
            let result = sum(4, 10)
            sleep(1)
            DispatchQueue.main.async {
                completion(result)
            }
        }
    }
    
}

#Preview {
    BasicAsyncFunction()
}

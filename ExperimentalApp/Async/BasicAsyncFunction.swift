//
//  BasicAsyncFunction.swift
//  ExperimentalApp
//
//  Created by Andreas Antonsson on 2024-07-15.
//

import SwiftUI

struct BasicAsyncFunction: View {
    @State var sum = 0
    
    var body: some View {
      VStack  {
            Text(String(sum))
          Button(action: {
              Task {
                  sum = await asyncFunc()
              }
          }, label: {
              Text("Press")
          })
        }
    }
    
    func sum(_ num: Int,_ num2: Int) -> Int {
        num * num2
    }
    
    func asyncFunc() async -> Int {
        try? await Task.sleep(nanoseconds: 3_000_000_000) // 3 seconds
       return sum(2, 4)
    }
}

#Preview {
    BasicAsyncFunction()
}

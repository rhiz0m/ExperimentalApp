//
//  ContentView.swift
//  ExperimentalApp
//
//  Created by Andreas Antonsson on 2024-06-09.
//

import SwiftUI

struct ContentView: View {
    
    @State var counter: Int = 0
    
    var body: some View {
        VStack {
            Text("\(counter)")
            
            Button(action: {
                if counter < 10 { counter += 1 }
            }, label: {
                Text("Increment")
                    .foregroundStyle(.black)
            })
            .padding()
            .background(.yellow)
            .cornerRadius(8)
            
            Button(action: {
                if counter > 0 { counter -= 1 }
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
    ContentView()
}

//
//  ChildView.swift
//  ExperimentalApp
//
//  Created by Andreas Antonsson on 2024-07-03.
//

import SwiftUI

struct ChildView: View {
    @Binding var counter: Int
    
    var body: some View {
        VStack {
            Text("This is the ChildView!")
            Text("\(counter)")
        }
        .padding()
        .background(.orange)
        .cornerRadius(8)
        
        Button(action: {
            counter += 1
            
        }, label: {
            Text("Increment Btn from Child")
        })
        
    }
}

struct ChildView_PreviewWrapper: View {
    @State var counter = 0
    
    var body: some View {
        ChildView(counter: $counter)
    }
}

#Preview {
    ChildView_PreviewWrapper()
}

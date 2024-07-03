//
//  ParentView.swift
//  ExperimentalApp
//
//  Created by Andreas Antonsson on 2024-07-03.
//

import SwiftUI

struct ParentView: View {
    @State var counter = 200
    
    var body: some View {
        VStack(spacing: 36) {
            Text("This is the ParentView!")
                .padding()
                .background(.red)
            
            ChildView(counter: $counter)
            
            Button(action: {
                counter -= 1
            }, label: {
                Text("Decrement Btn from parent")
                    .foregroundStyle(.black)
                    .padding()
                    .border(.black)
                    .cornerRadius(8)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.black, lineWidth: 1)
                    )
                
                
                
                
            })
        }
    }
}

#Preview {
    ParentView()
}

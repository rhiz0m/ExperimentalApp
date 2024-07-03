//
//  ContentView.swift
//  ExperimentalApp
//
//  Created by Andreas Antonsson on 2024-06-09.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        Text("SwiftUi Experiments")
            .font(.title)
            .padding()
        
        ParentView()
    }
}

#Preview {
    ContentView()
}

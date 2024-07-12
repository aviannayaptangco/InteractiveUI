//
//  ContentView.swift
//  InteractiveUI
//
//  Created by Vaneeka yaptangco on 7/12/24.
//

import SwiftUI

struct ContentView: View{
    @State private var textTitle = "What is your name?"
   @State private var name = ""
    var body: some View {
        VStack {
            Text(textTitle)
                .font(.title)
              
        
            TextField("", text: $name)
            
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 1)
            Button("Submit Name") {
               textTitle = "Welcome, \(name)!!!"
            }
            .padding(.top, 50.0)
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
        }
        .padding(25.0)
    }
}

#Preview {
    ContentView()
}

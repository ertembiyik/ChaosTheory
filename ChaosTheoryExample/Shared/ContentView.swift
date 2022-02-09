//
//  ContentView.swift
//  Shared
//
//  Created by Ertem Biyik on 09.02.2022.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ContentViewModel()
    
    var body: some View {
//        Text("First Point: \(viewModel.firstPoint.location)/nSecond Point: \(viewModel.secondPoint.location)")
        Text("hello")
            .padding()
            .onAppear {
                execute()
            }
    }
    
    func execute() {
        viewModel.startSerialSession()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

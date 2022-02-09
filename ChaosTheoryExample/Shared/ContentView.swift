//
//  ContentView.swift
//  Shared
//
//  Created by Ertem Biyik on 09.02.2022.
//

import SwiftUI
import ChaosTheory

struct ContentView: View {
    
    let plane = Plane(location: Coordinate(x: 0, y: 0), size: Size(width: 3, height: 3))
    let firstPoint = Point(location: Coordinate(x: 1.5, y: 1.5), size: Size(width: 0, height: 0), rootPlane: plane)
    
    
    @StateObject var viewModel = ContentViewModel(plane: plane, firstPoint: <#T##Point#>, secondPoint: <#T##Point#>)
    
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
    
    func execute() {
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

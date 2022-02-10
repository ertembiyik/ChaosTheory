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
//        let queue = DispatchQueue(label: "queue", attributes: .concurrent)
//        
//        var array = [Int]()
        
//        queue.async {
//            for _ in 0...1000 {
//                array.append(viewModel.startSerialSession())
//            }
//        }
//
//        queue.sync(flags: .barrier) {
//            var total = 0
//
//            for i in array {
//                total += i
//            }
//
//            let average = total/array.count
//
//            print(average)
//        }
        
        viewModel.startSerialSession()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

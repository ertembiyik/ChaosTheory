//
//  ContentView.swift
//  Shared
//
//  Created by Ertem Biyik on 09.02.2022.
//

import SwiftUI
import ChaosTheory

struct ContentView: View {
    
    @StateObject var viewModel = ContentViewModel()
    
    var body: some View {
//        Text("First Point: \(viewModel.firstPoint.location)/nSecond Point: \(viewModel.secondPoint.location)")
        ZStack {
            EmptyView()
                .padding()
                .onAppear {
                    execute()
                }
            PointView()
        }
        
    }
    
    func execute() {
        let queue = DispatchQueue(label: "queue", attributes: .concurrent)
        
        var array = [Int]()
        
        queue.async {
            for _ in 0...1000 {
                array.append(viewModel.startSerialSession())
            }
        }

        queue.sync(flags: .barrier) {
            var total = 0

            for i in array {
                total += i
            }

            let average = total/array.count

            print(average)
        }
    }
}


struct PointView: View {
    
    @Binding var point: Point
    
    var body: some View {
        Rectangle()
            .frame(width: 10, height: 10)
            .position(x: CGFloat(point.location.x),
                      y: CGFloat(point.location.y))
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

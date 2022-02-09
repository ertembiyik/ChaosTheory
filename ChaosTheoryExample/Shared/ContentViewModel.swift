//
//  ContentViewModel.swift
//  ChaosTheoryExample
//
//  Created by Ertem Biyik on 09.02.2022.
//

import SwiftUI
import ChaosTheory

final class ContentViewModel: ObservableObject {
    
    @Published var plane: Plane
    @Published var firstPoint: Point
    @Published var secondPoint: Point
    
    
    init(plane: Plane, firstPoint: Point, secondPoint: Point) {
        self.plane = plane
        self.firstPoint = firstPoint
        self.secondPoint = secondPoint
    }
    
    func startSerialSession() {
        while firstPoint != secondPoint {
            let firstRandomVector = MathFucks.generateRandomVector(range: plane.size)
            
            let secondRandomVector = MathFucks.generateRandomVector(range: plane.size)
            
            self.firstPoint.moveBy(vector: firstRandomVector)
            
            self.secondPoint.moveBy(vector: secondRandomVector)
        }
    }
}

//
//  ContentViewModel.swift
//  ChaosTheoryExample
//
//  Created by Ertem Biyik on 09.02.2022.
//

import SwiftUI
import ChaosTheory

final class ContentViewModel: ObservableObject {
    
    var plane: Plane
    var firstPoint: Point
    var secondPoint: Point
    
    
    init(plane: Plane, firstPoint: Point, secondPoint: Point) {
        self.plane = plane
        self.firstPoint = firstPoint
        self.secondPoint = secondPoint
    }
    
    func startSession() {
        while firstPoint != secondPoint {
            let firstRandomVector = MathFucks.generateRandomVector<Double>(range: plane.size)
        }
    }
}

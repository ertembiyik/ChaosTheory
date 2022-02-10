//
//  Constants.swift
//  ChaosTheoryExample
//
//  Created by Ertem Biyik on 10.02.2022.
//

import Foundation
import ChaosTheory

struct Constants {
    
    static let plane = Plane(location: Coordinate(x: 0, y: 0), size: Size(width: 200, height: 200))
    
    static var firstPoint = Point(location: Coordinate(x: 50, y: 50), size: Size(width: 1, height: 1), rootPlane: plane)
    
    static var secondPoint = Point(location: Coordinate(x: 50, y: 50), size: Size(width: 1, height: 1), rootPlane: plane)
}

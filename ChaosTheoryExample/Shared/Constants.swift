//
//  Constants.swift
//  ChaosTheoryExample
//
//  Created by Ertem Biyik on 10.02.2022.
//

import Foundation
import ChaosTheory

struct Constants {
    
    static let plane = Plane(location: Coordinate(x: 0, y: 0), size: Size(width: 3, height: 3))
    
    static let firstPoint = Point(location: Coordinate(x: 1.5, y: 1.5), size: Size(width: 0, height: 0), rootPlane: plane)
    
    static let secondPoint = Point(location: Coordinate(x: 1.5, y: 1.5), size: Size(width: 0, height: 0), rootPlane: plane)
}

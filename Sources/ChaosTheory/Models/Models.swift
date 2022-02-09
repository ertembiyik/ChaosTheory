//
//  File.swift
//  
//
//  Created by Ertem Biyik on 09.02.2022.
//

import Foundation

struct MathFucks {
    static func generateRandomVector(range: Size) -> Coordinate {
        let vector = Coordinate()
        vector.x = Double.random(in: -1...1)
        vector.y = Double.random(in: -1...1)
        return vector
    }
}

protocol Coordinate {
    var x: Double { get set }
    var y: Double { get set }
}

protocol Size {
    var width: Double { get set }
    var height: Double { get set }
}

protocol Cartesian {
    var location: Coordinate { get set }
    var size: Size { get set }
}


struct Plane: Cartesian {
    var location: Coordinate
    var size: Size
    
    init(location: Coordinate, size: Size) {
        self.location = location
        self.size = size
    }
}

struct Point: Cartesian {
    
    var location: Coordinate
    var size: Size
    var plane: Plane
    
    init(location: Coordinate, size: Size, rootPlane: Plane) {
        self.location = location
        self.size = size
        self.plane = plane
    }
    
    mutating func moveBy(vector: Coordinate) {

        if location.x + vector.x > plane.size.width {
            location.x = plane.size.width
        } else {
            location.x += vector.x
        }
        
        if location.y + vector.y > plane.size.height {
            location.y = plane.size.height
        } else {
            location.y += vector.y
        }
        
    }
    
    
}


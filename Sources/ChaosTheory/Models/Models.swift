//
//  File.swift
//  
//
//  Created by Ertem Biyik on 09.02.2022.
//

import Foundation

public struct MathFucks {
    public static func generateRandomVector(range: Size) -> Coordinate {
        
        let x = Int.random(in: -range.width/2...range.width/2)
        let y = Int.random(in: -range.height/2...range.height/2)
        
        
        return Coordinate(x: x, y: y)
    }
}

public struct Coordinate {
    public var x: Int
    public var y: Int
    
    public init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
}

public struct Size {
    public var width: Int
    public var height: Int
    
    public init(width: Int, height: Int) {
        self.width = width
        self.height = height
    }
}

public protocol Cartesian {
    var location: Coordinate { get set }
    var size: Size { get set }
}


public struct Plane: Cartesian {
    public var location: Coordinate
    public var size: Size
    
    public init(location: Coordinate, size: Size) {
        self.location = location
        self.size = size
    }
}

public struct Point: Cartesian {
    
    public var location: Coordinate
    public var size: Size
    public var plane: Plane
    
    public init(location: Coordinate, size: Size, rootPlane: Plane) {
        self.location = location
        self.size = size
        self.plane = rootPlane
    }
    
    public mutating func moveBy(vector: Coordinate) {

        if location.x + vector.x > plane.size.width {
            location.x = plane.size.width
        } else if location.x + vector.x < 0 {
            location.x = 0
        } else {
            location.x += vector.x
        }
        
        if location.y + vector.y > plane.size.height {
            location.y = plane.size.height
        } else if location.y + vector.y < 0 {
            location.y = 0
        } else {
            location.y += vector.y
        }
        
    }
    
    
}

extension Point: Equatable {
    public static func == (lhs: Point, rhs: Point) -> Bool {
        (lhs.location.x == rhs.location.x) && (lhs.location.y == rhs.location.y)
    }
}


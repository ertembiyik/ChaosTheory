//
//  File.swift
//  
//
//  Created by Ertem Biyik on 09.02.2022.
//

import Foundation

public struct MathFucks {
    public static func generateRandomVector<T: Coordinate>(range: Size) -> T {
        
        let x = Double.random(in: -1...1)
        let y = Double.random(in: -1...1)
        
        
        return T(x: x, y: y)
    }
}

public protocol Coordinate {
    var x: Double { get set }
    var y: Double { get set }
    init()
}

extension Coordinate {
    init(x: Double, y: Double) {
        self.init()
        self.x = x
        self.y = y
    }
}

public protocol Size {
    var width: Double { get set }
    var height: Double { get set }
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

extension Point: Equatable {
    public static func == (lhs: Point, rhs: Point) -> Bool {
        (lhs.location.x == rhs.location.y) && lhs.location.y == rhs.location.y
    }
}


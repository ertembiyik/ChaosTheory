import XCTest
@testable import ChaosTheory

final class ChaosTheoryTests: XCTestCase {
    
    func testMoveBy() throws {
        var point = Point(
                    location: Coordinate(x: 1, y: 1),
                    size: Size(width: 1, height: 1),
                    rootPlane: Plane(location:
                                        Coordinate(x: 0,
                                                   y: 0),
                                     size: Size(width: 3,
                                                height: 3)))
        
        point.moveBy(vector: Coordinate(x: 1, y: 1))
        
        var pointTwo = point
        pointTwo.location = Coordinate(x: 2, y: 2)
        
        XCTAssertEqual(point, pointTwo)
    }
}

import UIKit
import PlaygroundSupport

// MARK: - 1
let myClosure = { print("I love swift") }

myClosure()

func repeatTask(times: Int, task: () -> Void) {
    for _ in 0..<times {
        task()
    }
}

repeatTask(times: 10, task: myClosure)

// MARK: - 2
enum Directions {
    case up, down, left, right
}

class Location {
    var x = 0
    var y = 0
    
    func printCoordinates() {
        print("(\(self.x), \(self.y))")
    }
    
    func moving(moves: [Directions]) {
        for move in moves {
            switch move {
            case .up:
                self.y += 1
            case .down:
                self.y -= 1
            case .right:
                self.x += 1
            case .left:
                self.x -= 1
            }
        }
    }
}

let location = Location()
let moves: [Directions] = [.up, .up, .left, .down, .left, .down, .down, .right, .right, .down, .right]

location.moving(moves: moves)
location.printCoordinates()

// MARK: - 3
class Rectangle {
    let length: Double
    let width: Double
    
    init(length: Double, width: Double) {
        self.length = length
        self.width = width
    }
    
    func printPerimeter() {
        print("perimeter is \(2*(length + width))")
    }
}

let rectangle = Rectangle(length: 15, width: 16)
rectangle.printPerimeter()

// MARK: - 4
extension Rectangle {
    var square: Double {
        get {
            return self.length * self.width
        }
    }
}

print(rectangle.square)

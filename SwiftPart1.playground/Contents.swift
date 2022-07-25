import UIKit
import PlaygroundSupport

// MARK: - 1
let a = 5.2
let b = 84.16

var average = (a + b) / 2

// MARK: - 2
let tuple = (firstName: "John", lastName: "Swift")

print("Full name: \(tuple.firstName) \(tuple.lastName)")

// MARK: - 3
var firstNumber: Float? = 762.16
var secondNumber: Float? = nil

func checkNumber(number: Float?) {
    guard let number = number else {
        print("Variable can't be unwrapped")
        return }
    print(number)
}

checkNumber(number: firstNumber)
checkNumber(number: secondNumber)

// MARK: - 4 // Тут можно придумать более оптимальное решение
func fibonacci(amountOfNumbers: Int) {
    if amountOfNumbers == 0 {
        print("No numbers")
    } else if amountOfNumbers == 1 {
        print("0")
    } else {
        print("0\n1")
        var i = 2
        var temp: Int
        var previousNumber1 = 0
        var previousNumber2 = 1
        
        while (i < amountOfNumbers) {
            temp = previousNumber2
            previousNumber2 += previousNumber1
            previousNumber1 = temp
            print("\(previousNumber2)")
            i += 1
        }
    }
}

fibonacci(amountOfNumbers: 15)

// MARK: - 5 // В целом норм, но можно еще оптимизировать

func bubbleSort(numbers: [Int]) -> [Int] {
    var sortedNumbers = numbers
    
    for i in 0..<sortedNumbers.count {
        let index = (sortedNumbers.count - 1) - i
        
        for j in 0..<index {
            let number = sortedNumbers[j]
            let nextNumber = sortedNumbers[j + 1]
            
            if number > nextNumber {
                sortedNumbers[j] = nextNumber
                sortedNumbers[j + 1] = number
            }
        }
    }
    
    return sortedNumbers
}

let numbers = [5, 16, 88, 14, 256, 11, 12, 0, 4]

print(bubbleSort(numbers: numbers))

// MARK: - 6

func changeString(string: String) -> String {
    var newString = ""
    
    for i in 0..<string.count { // тут можно оптимизировать,
        if string[string.index(string.startIndex, offsetBy: i)].isNumber {
            let firsNumberIndex = string.index(string.startIndex, offsetBy: i)
            
            let firstPart = String(string[..<firsNumberIndex])
            let secondPaft = String(Int(string[firsNumberIndex..<string.endIndex])! + 1)
            
            newString.insert(contentsOf: firstPart, at: newString.endIndex)
            newString.insert(contentsOf: secondPaft, at: newString.endIndex)

            break
        }
    }
    
    return newString
}

print(changeString(string: "Hello, world99"))

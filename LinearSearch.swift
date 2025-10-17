import Foundation  // Import Foundation for random numbers and input

// Function to generate a random array of 10 numbers
func generateRandomArray() -> [Int] {
    var array = [Int]() // Empty array for random numbers
    
    // Fill the array with 10 random numbers
    for i in 0..<10 {
        let randNum = Int.random(in: 0...100) // Pick random number 0–100
        array.append(randNum) // Add it to array
    }
    return array // Just return the array — no printing here
}

// Linear search function
func linearSearch(targetNumber: Int, array: [Int]) -> Int {
    for i in 0..<array.count {
        if array[i] == targetNumber {
            return i // Found the number, return index
        }
    }
    return -1 // Number not found
}

// Main program
func main() {
    while true {
        // Create a new random array each round
        let numbers = generateRandomArray().sorted()
        
        // Build and print one single line of numbers
        var line = ""
        for i in 0..<numbers.count {
            line += "\(numbers[i]) "
        }
        print(line)

        print("Number: ") // Ask user

        if let input = readLine() {
            if input.lowercased() == "q" { // Quit if user types q
                print("Thank you for playing!")
                break
            }

            if let target = Int(input) {
                let index = linearSearch(targetNumber: target, array: numbers)
                if index >= 0 {
                    print("The number \(target) is found at index \(index).")
                } else {
                    print("The number \(target) is not found in the list.")
                }
            } else {
                print("Invalid input, try again.")
            }
        } else {
            print("Invalid input, try again.")
        }
    }
}

// Run the program
main()

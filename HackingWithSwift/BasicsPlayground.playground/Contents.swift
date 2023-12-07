import UIKit


// MARK: `Double` type precision test
let number = 0.1 + 0.2
print(number)

// MARK: How to break out of the outer loop using `Labeled statements`?
let array1 = [1, 2, 3]
let array2 = [4, 5, 6]
let array3 = [7, 8, 9]
let secretCombination = [1, 5, 9]

outerLoop: for option1 in array1 {
    for option2 in array2 {
        for option3 in array3 {
            print("In loop")
            let attempt = [option1, option2, option3]

            if attempt == secretCombination {
                print("The combination is \(attempt)!")
                break outerLoop
            }
        }
    }
}


import Foundation

func gcd(_ a: Int, _ b: Int) -> Int {
    var x = abs(a)
    var y = abs(b)
    while y != 0 {
        let temp = x % y
        x = y
        y = temp
    }
    return x
}

func lcd(_ a: Int, _ b: Int) -> Int {
    return abs(a * b) / gcd(a, b)
}

print("Fraction LCD Practice")
print("Type 'q' to quit.\n")

while true {
    let denom1 = Int.random(in: 2...12)
    var denom2 = Int.random(in: 2...12)
    while denom1 == denom2 {
        denom2 = Int.random(in: 2...12)
    }
    let correct = lcd(denom1, denom2)
    print("Find the LCD of \(denom1) and \(denom2): ", terminator: "")
    guard let input = readLine(), input.lowercased() != "q" else { break }
    if let answer = Int(input) {
        if answer == correct {
            print("Correct!\n")
        } else {
            print("Incorrect. The correct LCD is \(correct).\n")
        }
    } else {
        print("Please enter a valid integer or 'q' to quit.\n")
    }
}

print("Goodbye!")
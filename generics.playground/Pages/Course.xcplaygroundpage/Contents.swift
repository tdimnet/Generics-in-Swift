// Generics

var d = 10
var e = 12

var g = "Thomas"
var h = "Dimnet"

// Writing Generic Functions
func swapValues<T>(_ a: inout T, _ b: inout T) { // T is a placeholder and tells the compiler this is a generic function
    let tempA = a
    a = b
    b = tempA
}

swapValues(&d, &e)
swapValues(&g, &h)

// swapValues(&d, &g) -> this will fail


// Generic with multiple type parameters
func transform<T, U>(arg: T, operation: (T) -> U) -> U { // Generic function is more than defining rule than doing a specific operation
    return operation(arg)
}

func stringToInt(_ a: String) -> Int {
    guard let value = Int(a) else { fatalError() }
    return value
}

transform(arg: "1", operation: stringToInt)

func intToString(_ a: Int) -> String {
    return String(a)
}

transform(arg: 12, operation: intToString)


// Protocol based type constraints

func findKey<Key, Value: Equatable>(for value: Value, in dictionary: Dictionary<Key, Value>) -> Key? {
    for (iterKey, iterValue) in dictionary {
        if iterValue == value {
            return iterKey
        }
    }
    return nil
}

// First example with String value
let airportCodes = ["CDG": "Charles de Gaulle", "HKG": "Hong Kong International Airport"]
findKey(for: "Charles de Gaulle", in: airportCodes)


// Second example with a struct
enum Snack {
    case gum
    case cookie
}

struct Item {
    let price: Int
    let quantity: Int
}

extension Item: Equatable {
    static func ==(lhs: Item, rhs: Item) -> Bool {
        return lhs.price == rhs.price && lhs.quantity == rhs.quantity
    }
}

let inventory: [Snack: Item] = [
    .gum: Item(price: 1, quantity: 5),
    .cookie: Item(price: 2, quantity: 3)
]

let someItem = Item(price: 2, quantity: 3)

findKey(for: someItem, in: inventory)

























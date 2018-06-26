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

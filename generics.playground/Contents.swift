// Generics

func swapInts(_ a: inout Int, _ b: inout Int) {
    let tempA = a
    a = b
    b = tempA
}

var d = 10
var e = 12

swapInts(&d, &e)

d
e

var g = "Thomas"
var h = "Dimnet"

// swapInts(&g, &h) -> will not work because we attempt to work with integers

func swapStrings(_ a: inout String, _ b: inout String) {
    let tempA = a
    a = b
    b = tempA
}

swapStrings(&g, &h)

g
h

// Below, this could be a good idea but we lose the type safety of Swift.
func swapAny(_ a: inout Any, _ b: inout Any) {
    let tempA = a
    a = b
    b = tempA
}

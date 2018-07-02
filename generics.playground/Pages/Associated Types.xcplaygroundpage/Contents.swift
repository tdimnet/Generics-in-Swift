// Associated Types

// Below: Protocol Generic requirements
protocol Stack {
    associatedtype Element
    
    mutating func push(_ element: Element)
    mutating func pop() -> Element?
    
    var top: Element? { get }
}

struct IntStack: Stack {
    private var array = Array<Int>()
    
    mutating func push(_ element: Int) {
        array.append(element)
    }
    
    mutating func pop() -> Int? {
        return array.popLast()
    }
    
    var top: Int? {
        return array.last
    }
}

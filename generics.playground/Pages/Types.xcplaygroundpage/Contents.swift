// Generic Types

var numbs: [Int] = []
var numbers = Array<Int>() // Same as above and array is a generic type

let city = "Charlotte"
let streetName = Optional.some("123 Street")

var errorCodes = Dictionary<Int, String>()


// Linked Lists

class LinkedListNode<Key> {
    let key: Key
    
    var next: LinkedListNode?
    weak var previous: LinkedListNode?
    
    init(key: Key) {
        self.key = key
    }
}

class LinkedList<Element> {
    typealias Node = LinkedListNode<Element>
    
    private var head: Node?
    
    var first: Node? {
        return head
    }
    
    var last: Node? {
        if var node = head {
            while node.next != nil {
                node = node.next
            }
            return node
        } else {
            return nil
        }
    }
}

let list = LinkedList<String>()






























































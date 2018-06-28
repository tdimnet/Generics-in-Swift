
/*
 * 1.
 * Write a function named duplicate with a single generic type parameter T. The function takes two arguments, item of type T, and numberOfTimes of type Int, and returns an array of type T.
 * The function simply creates an array containing the element duplicated by the number of times specified. For example, calling duplicate(item: 1, numberOfTimes: 4) returns [1, 1, 1, 1].
 */

func duplicate<T> (item: T, numberOfTimes: Int) -> [T] {
    var myArr: [T] = []
    for _ in 0..<numberOfTimes {
        myArr.append(item)
    }
    return myArr
}

print(duplicate(item: 1, numberOfTimes: 4))
print(duplicate(item: "Foo", numberOfTimes: 4))


/*
 * 2.
 * In the editor define a function named map with two generic type parameters, T and U. The function takes two arguments - array of type [T], and transformation of type (T) -> U. The function returns an array of
 * type U.
 * The goal of the function is to apply the transformation operation on the array passed in as argument to return a new array containing the values transformed.
 * For example given the array [1,2,3,4,5] as first argument, and a square function as the transformation argument, the result should be [1, 4, 9, 16, 25].
 */

func map<T, U>(array: [T], transformation: (T) -> U) -> [U] {
    var myArr: [U] = []
    for index in 0..<array.count {
        var myVar = transformation(array[index])
        myArr.append(myVar)
    }
    return myArr
}


/*
 * 3.
 * In the editor, define a function, named largest, with a generic type parameter, T. The function takes an array of type T as its first argument. Give this argument an external name of in. The return type of the function is optional T.
 * Given an array the function should return the largest value in the array. For example, calling largest(in: [1,2,3]) should return 3.
 * To make this work, you'll need to constrain the generic type T to conform to Comparable.
 */

func largest<T: Comparable>(in array: [T]) -> T? {
    var largest: T?
    
    if let largestNum = array.max() {
        largest = largestNum
    } else {
        return nil
    }
    
    return largest
}


/*
 * 4.
 * Over several tasks we're going to create a simple data structure called a Queue. Where a Stack follows a Last In First Out policy, a Queue is a First In First Out data structure.
 *
 * Let's start by declaring a struct Queue, with a generic type parameter Element. To this type add a variable stored property, array, that holds Element, and initialize it to an empty array. This will serve as the underlying data store.
 */

struct Queue<Element> {
    var array: [Element] = []
    
    var isEmpty: Bool {
        if array.count == 0 {
            return true
        } else {
            return false
        }
    }
    
    var count: Int {
        return array.count
    }
    
    mutating func enqueue(_ element: Element) {
        array.append(element)
    }
    
    mutating func dequeue() -> Element? {
        if array.isEmpty {
            return nil
        }
        return array.removeFirst()
    }
}

let queue = Queue(array: [])
queue.isEmpty











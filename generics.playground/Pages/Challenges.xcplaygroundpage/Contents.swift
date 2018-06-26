
/*
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

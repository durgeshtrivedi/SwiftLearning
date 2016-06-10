//: Playground - noun: a place where people can play

import UIKit
/*
// Problem

func swapTwoInts (inout a : Int, inout b : Int){
    let temporaryA = a
    a = b
    b = temporaryA
}

var someInt = 5
var anotherInt = 10

swapTwoInts(&someInt, &anotherInt)
println("someInt is now \(someInt), and anotherInt is now \(anotherInt)")




// Same code for String type

func swapTwoStrings (inout a : String, inout b : String){
    
    let temporaryA = a
    a = b
    b = temporaryA
}

var someString = "I am some string"
var anotherString = "I am another string"


swapTwoStrings(&someString, &anotherString)
println("someString is now \(someString), and anotherString is now \(anotherString)")



// For Any : crashes at run time if two different data types

func swapTwoAnyValues (inout a : AnyObject, inout b : AnyObject)
{
    let temporaryA: AnyObject = a
    a = b
    b = temporaryA
}


var iAmFive = 5
var iAmSomeInt = "I am another int"

//swapTwoAnyValues(&iAmFive, &iAmSomeInt)



// Solution : GENERICS

// Generic functions use placeholder names instead of an actual type, such as String, Int or Double.
// In below example placeholder T is exapmle of  type parameter
// Type parameters specify and name a placeholder type, and are written immediately after the function’s name, between a pair of matching angle brackets (such as <T>).

func swapParameters<T> (inout iamFirst : T, inout iamSecond : T){
    
    let temporaryFirst = iamFirst
    iamFirst = iamSecond
    iamSecond = temporaryFirst
    
    println("iamFirst is now \(iamFirst), and iamSecond is now \(iamSecond)")

}


//var iamFirst = 5
//var iamSecond = 22

var iamFirst = "Jon"
var iamSecond = "Snow"

//var iamFirst = 45.6
//var iamSecond = 99.2


swapParameters(&iamFirst, &iamSecond)


/// Multiple types

func someFunction<A, N> (inout someM : A , inout someN : N)
{
    println("\(someN) \(someM)")
}

var someM = 4
var someN = "I am number"


someFunction(&someM, &someN)


// NOTE : Always give type parameters UpperCase names (such as T and Key) to indicate that they are a placeholder for a type, not a value.



/// Type Constraints

// Type constraints specify that a type parameter must inherit from a specific class, or conform to a particular protocol or protocol composition.



// problem :  Not every type in Swift can be compared with the equal to operator (==)


func findIndex<T>(array: [T], valueToFind: T) -> Int? {

    for (index, value) in enumerate(array) {
        if value == valueToFind {
            return index
        }
    }
    return nil
}



// Solution

// All of Swift’s standard types automatically support the Equatable protocol.
// The single type parameter for findIndex is written as T: Equatable, which means "any type T that conforms to the Equatable protocol."

// Type constraints

func findIndex<T: Equatable>(array: [T], valueToFind: T) -> Int? {
    
    for (index, value) in enumerate(array) {
        
        if value == valueToFind {
            
            return index
        }
    }
    return nil
}




// Generic Types
// Swift enables you to define your own generic types. These are custom classes, structures, and enumerations that can work with any type, in a similar way to Array and Dictionary.

struct LOTR <T> {
    
    var items = [T]()
    mutating func push(item: T) {
        items.append(item)
    }
    
    mutating func pop() -> T {
        return items.removeLast()
    }
}

var memoryStack = LOTR<String>()

memoryStack.push("Samwise")
memoryStack.push("Frodo")
memoryStack.push("Boromir")
memoryStack.push("Aragon")
println(memoryStack.items)


let deletetos = memoryStack.pop()
println(deletetos)






// Extending a Generic Type


extension LOTR {
    
    var first: T? {
        return items.isEmpty ? nil : items[items.count - 1]
    }
}
var lotrStack = LOTR<String>()

lotrStack.push("Gimli")
lotrStack.push("Smeagol")
lotrStack.push("Arwen")
lotrStack.push("Legolas")
println(lotrStack.items)


if let first = lotrStack.first {
    println("The top item on the stack is \(first).")
}


//Associated Types
//Swift allows associated types to be declared inside the protocol definition by the keyword 'typealias'.
//An associated type gives a placeholder name (or alias) to a type that is used as part of the protocol. 
//The actual type to use for that associated type is not specified until the protocol is adopted. Associated types are specified with the typealias keyword

protocol Matrix {
    
    typealias ItemType
    mutating func append(item: ItemType)
    var count: Int { get }
    subscript(i: Int) -> ItemType { get }
}

struct Zion<T>: Matrix {
    
    // original Stack<T> implementation
    var items = [T]()
    mutating func push(item: T) {
        items.append(item)
    }
    
    mutating func pop() -> T {
        return items.removeLast()
    }
    
    // conformance to the Container protocol
    mutating func append(item: T) {
        self.push(item)
    }
    
    var count: Int {
        return items.count
    }
    
    subscript(i: Int) -> T {
        return items[i]
    }
}

var zion = Zion<String>()
zion.push("Neo")
zion.push("Trinity")
zion.push("Morpheous")
zion.push("Oracle")
println(zion.items)

*/
/// use of WHERE clause

protocol Container {
    typealias ItemType
    mutating func append(item: ItemType)
    var count: Int { get }
    subscript(i: Int) -> ItemType { get }
}
extension Array: Container {}


struct Stack<T>: Container {
    // original Stack<T> implementation
    var items = [T]()
    mutating func push(item: T) {
        items.append(item)
    }
    mutating func pop() -> T {
        return items.removeLast()
    }
    // conformance to the Container protocol
    mutating func append(item: T) {
        self.push(item)
    }
    var count: Int {
        return items.count
    }
    subscript(i: Int) -> T {
        return items[i]
    }
}


func allItemsMatch<
    C1: Container, C2: Container
    where C1.ItemType == C2.ItemType, C1.ItemType: Equatable>
    (someContainer: C1, anotherContainer: C2) -> Bool {
        
        // check that both containers contain the same number of items
        if someContainer.count != anotherContainer.count {
            return false
        }
        
        // check each pair of items to see if they are equivalent
        for i in 0..<someContainer.count {
            if someContainer[i] != anotherContainer[i] {
                return false
            }
        }
        
        // all items match, so return true
        return true
        
}


var stackOfStrings = Stack<String>()
stackOfStrings.push("uno")
stackOfStrings.push("dos")
stackOfStrings.push("tres")

var stackOfStrings1 = Stack<String>()
stackOfStrings1.push("uno")
stackOfStrings1.push("dos")
stackOfStrings1.push("tres")

var arrayOfStrings = ["uno", "dos", "tres"]

if allItemsMatch(stackOfStrings, arrayOfStrings) {
    print("All items match.")
} else {
    print("Not all items match.")
}





// Custom Subscripts
// This looks a lot like a Swift computed property. The major difference is the function prototype at the top.  It uses the subscript keyword first, then it takes a parameter and describes a return type.  The parameter is what goes in the subscript (between the square brackets).  In an Array, that’s the Int that describes the index.  In Dictionaries, that is whatever is used as the key.

// Then, like computed properties, we write the getter and setter method. In both of these cases, we are still calling the meals dictionary, but we are covering up the details from the user.

class DailyMeal
{
    enum MealTime
    {
        case Breakfast
        case Lunch
        case Dinner
    }
    
    var meals: [MealTime : String] = [:]
    
    subscript(requestedMeal: MealTime) -> String
        {
        get
        {
            if let thisMeal = meals[requestedMeal]
            {
                return thisMeal
            }
            else
            {
                return "Ramen"
            }
        }
        set(newMealName)
        {
            meals[requestedMeal] = newMealName
        }
    }
}


var monday = DailyMeal()

monday[.Lunch] = "Pizza"

println(monday[.Lunch])         //Output:  "Pizza"

println(monday[.Dinner])        //Output:  "Ramen"

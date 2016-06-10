//: Playground - noun: a place where people can play

import UIKit

class Animal
{
    var dog:Dog?
    
   // var dog:Dog!
    
    init (name:Dog)
    {
        self.dog = name
    }
    init()
    {
    }
}


class Dog
{
    var name :String?
    
    init(name :String)
    {
        self.name = name
    }
    init()
    {
    }
    
    func nameoftheDog() -> String?
    {
        return name
    }
    
}


//var animal1 :Animal = Animal(name: dog)
var animal :Optional<Animal?> = Animal()
//var dog = Dog ()

var dog :Dog?
//
dog = nil


//var dog = Dog (name: "Babu")

animal.dog = dog

//println(animal.dog.name)

println(animal.dog?.name)

//println(animal.dog.nameoftheDog())

println(animal.dog?.nameoftheDog())


if let animal = animal.dog?.nameoftheDog()
{
    println(animal)
}
else
{
    println("Ther is no name for dog")
}



var value:String? = "Hello"

//if value        optional as boolean value can/t be writtern now

if value != nil
{
     println("This is not empty string")
}




//NilLiteralConvertible and Optionals

//enum Optional<T> : Reflectable, NilLiteralConvertible {
//    case None
//    case Some(T)
//    init()
//    init(_ some: T)
//    init(nilLiteral: ())
//    
//    func map<U>(f: (T) -> U) -> U?
//    func getMirror() -> MirrorType
//}


//when a property can be there or not there, like middleName or spouse in a Person class
//When a method can return a value or nothing, like searching for a match in an array
//When a method can return either a result or get an error and return nothing
//Delegate properties (which don't always have to be set)
//For weak properties in classes. The thing they point to can be set to nil
//For a large resource that might have to be released to reclaim memory










//: Playground - noun: a place where people can play

import UIKit

//Swift CLOUSER

typealias StateMachineType = () -> Int

func stateMachine (maxState:Int) -> StateMachineType
{
    var currentState :Int = 0
    return{
        currentState++
        if currentState > maxState
        {
            currentState = 0
        }
        return currentState
    }
}

let tristate = stateMachine(10)

println(tristate())
println(tristate())
println(tristate())
println(tristate())
println(tristate())
println(tristate())
println(tristate())
println(tristate())
println(tristate())
println(tristate())



func closertest()
{
    var myItemvalue = 1;
    
    
    for var i = 0;i < 5;  i++
    {
        println("NewValue of \(tristate())")
    }
}


//closertest()

var newRaay = [Int]()


let number = Array(1...10).reduce("number ") {(number,total) in total + "\(number)"}

extension Array {    func myReduce<T, U>(seed:U, combiner:(U, T) -> U) -> U {    var current = seed
    for item in self {        current = combiner(current, item as! T)
    }    return current
    }}


func addToInt (a:Int,b:Int) ->Int
    {
        return a + b;
}
var mathFunction : (Int,Int) -> Int = addToInt


func printadd (addvalue :(Int,Int)->Int,a:Int,b:Int) ->Int
{
    
    return addvalue(a,b)
}


printadd(mathFunction, 10, 20)


///// ***** CLOUSER ******** /////


printadd ( {(s1:Int,s2:Int) ->Int in
    return s1  + s2} ,1,2)

// not need to write the parameter type and return type for inline clouser
printadd({ s1,s2 in return s1+s2},2,5)


/// omit the return type from in line clouser

printadd ({s1,s2 in s1 + s2} ,4,5)

///short hand clouser for parameter type

printadd({$0 + $1}, 10, 20)

var array = [1,2,3,4,5]

let string = array.map
    {
    (var number) -> String in
    var output = 0
    
    while number > 100
    {
        output = output + 1
    }
    
    return "\(output)"
}



func incrementor (number :Int) -> () ->Int
    {
    var runincrementor = 0;
    
    func increase () -> Int
{
    return runincrementor + 10;
    }
    
    return increase
}

let increaseby10 = incrementor(10)

increaseby10()

// function and clouser are reference type

// if you assing a clouer or function to 2 differenct constant and variable it will reference to same clouser

//clouser expression syntax can use constant parameter ,variable parameter and inout parameter.Default value can not be provided .Vardiac parameter can be provided if you name the vardia parameter and place in last of parameter list.



// if you are assigning a clouser to a property of a class instance and that clouser caputer that instance  by referering to that instance or its member  you are creating a strong reference cycle between clouser and the instance .


class Animal
{
    var name = "Jal Pari"
    var delegate:Animal?
    func getName() -> String
    {
        return self.name
    }
    // lazy properties will only get access until after initiliazation is complete  so self will definately exist
    lazy var newName : String -> String = {[unowned self,weak delegate = self.delegate!] newName in
        if newName == "Pari"
        {
          return self.name
        }
        else
        {
         return "Goddi"
        }
   // even if clouser holds mutiple reference to self it will hold one strong reference to self
     
    }
    
    deinit
    {
        println("\(name) name is deinit")
    }

    // if a capture reference is  never going nil in future capture it always as unowned referecne reather than weak
}


var animal:Animal? = Animal()

println(animal!.newName("Pari"))

animal = nil




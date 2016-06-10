// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


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
    for item in self {    current = combiner(current, item as! T)
    }    return current
    }}

//: Playground - noun: a place where people can play

import UIKit

//Swift functions 


func printMyName(name:String) ->String
{
    var name = "Hello " + name
    return name

}

println(printMyName("Durgesh"))

println(printMyName(String("Trivedi")))



func multipleParameter(name: String,address:Int) ->String{
    return " \(name) + \(address)"
}

println(multipleParameter("DUrgesh",1))

//function with no return value also return a value 'Void', which is simple a empty tuple
// tuple with a zero element can be written as ()


// function with mutiple return value 

func returnTupe(max:Int,min:Int) ->(maxValue :Int,minValue:Int)
{
    return (max,min)
}

var tuple = returnTupe(20, 10)

tuple.0
tuple.1

tuple.maxValue
tuple.minValue

// Function with return optional tuple values

func minMax(array :[Int]) -> (min :Int? ,max :Int?)?
{
    var min:Int? = 10
    var max:Int? = 20
    
    if array.isEmpty { return nil}
    
    for arr in array
    {
        if arr < 10
        {
            min = arr
        }
        if arr > max
        {
            max = arr
        }
        
    }
    return (min,max)
}


// External para meter name for the function 

func parametername(externaname localname:Int)

{
    println(localname)
}
//if given external parameter name to function then that  must be used while call the function
parametername(externaname: 10)


func printAddress(name name:String,street street: String,address address:String)
{
    println("name: \(name) street : \(street) adddress: \(address)")
}

// when external parameter name and local parameter name are same can be written like this
func printAddress1(#name:String,#street :String,#address :String )
{
     println("name: \(name) street : \(street) adddress: \(address)")
}

printAddress(name: "DUrgesh", street: "Pashan -Sus Road", address: "Sai Vihar")
printAddress1(name: "DUrgesh", street: "Pashan -Sus Road", address: "Sai Vihar")



// We can define the default value for a parameter name and when default value is assign we 
//can omit the parameter when calling that function ,Place the parameter which have default value at the end of function so we don't miss and parameter 

// parameter with defaule value swift automatic provide externalname not need to provide that

func newAddress(#name:String,#street :String,address :String  = "Pashan Circle")
{
    //name = "Trivedi" Function parameter are alwasy contant
    println("name: \(name) street : \(street) adddress: \(address)")
}


newAddress(name: "Durgesh", street: "Pashan -Sus Road")  // default value is used here 

newAddress(name: "Durgesh", street: "Pashan -Sus Road",address : "kothrud")

// we can use underscore _ to a void expilicit parameter name

func changesAddress(name:String,street :String,_ address:String  = "Pashan Circle")
{
    println("name: \(name) street : \(street) adddress: \(address)")
}

changesAddress("Durgesh", "Bavdhan", "PAshan- bavdhan road")


//Variadic parameter 

func vardiacParameter (name :String,numbers:Double...)
{
    //number will be contant array of type double inside the function
    
    for number in numbers
    {
        println("Then ubmer is \(number)")
    }
    println("Then number is \(name)")
}
// vardia parameter must come as last in fucntion parameter list
vardiacParameter("HEllo ",1)

//if you have default value and vardia parameter both put vardia at last 


//Function parameter are always contant

//we can make variable name parameter

func variablenameparameter(var name:String,street :String,_ address:String  = "Pashan Circle")
{
    name = "Durgesh ka ghar"
    println("name: \(name) street : \(street) adddress: \(address)")
    
}

// The value of variable parameter not persist out side the function only for life time of function

variablenameparameter("Durgesh", "Bavdhan", "Pashan- bavdhan road")

// Persist the value out side the function 

var value = 10
var valuename = 20
func inoutvalue(inout a:Int,inout b:Int)
{
    a = 20
    b = 30
}


inoutvalue(&value, &valuename)

println("\(value) and \(valuename)")



// inout parameter can't have default value and variadic parameter can't be inout


//function with no return type always return void (),which is a empty tuple in swift

//Funtion Type we can define a variable as Funtion type 

var functionType :(inout Int,inout Int) -> Void = inoutvalue


//inout is needed here 

functionType(&value,&valuename)


func inoutvalue1(a:Int,b:Int) -> Int
{
    return a * b
}


// function type as a parameter 

func newFunction(inoutfunct :( Int, Int) -> Int,a:Int,b:Int)
{
    println(inoutfunct(a,b))
}


newFunction(inoutvalue1,10,20)



//FuntionType as a return value 
func incrementValue(value:Int) -> Int
{
    return value + 1
}

func decrementValue(value:Int) -> Int
{
    return value - 1
}

func incrementFunction1(a:Int) -> (Int) -> Int
{
    return  a > 10 ? incrementValue :decrementValue
}

var increment = incrementFunction1(10)

increment(10)


//nessted function which are hidden from out side word

func incrementFunction2(a:Int) -> (Int) -> Int
{

func incrementValue(value:Int) -> Int
{
    return value + 1
}

func decrementValue(value:Int) -> Int
{
    return value - 1
}
    
    return  a > 10 ? incrementValue :decrementValue
}




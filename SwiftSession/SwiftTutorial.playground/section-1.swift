// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var address = (742,"This isthe address")

var address1:(Double,String) = (Double(743),"What is the address")

var address2 = (743.0,"LOcation is the address")

println("\(address) ,\(address1),\(address2)")


var newString :String! = "What is the string"

println(newString.uppercaseString)


var array:[String] = ["1","2","3","4"]


println(array)

array.removeAtIndex(0)

array

var dic = [1:"1",2:"2",3:"3"]

dic[2] = nil

dic


func checkValueType (value :Int,expected:Int ,message:String)
{
    if value == expected
    {
         println("The expected value is correct \(expected)")
    }
    else {("This is not the value \(value)" )}
}


func checkValueType (value :String,expected:String ,message:String)
{
    if value == expected
    {
        println("The expected value is correct \(expected)")
    }
    else {("This is not the value \(value)" )}
}


checkValueType(10, 10, "I have passed")

checkValueType("car", "dog", "I have passed ")

func checkValueType<T:Equatable> (value:T, expected :T,message :String)
{
    if value == expected
    {
        println("The expected value is correct \(expected)")
    }
    else {("This is not the value \(value)" )}
}


func square (var number:Double)
{
    number = number * number
}

var a = 2.0

square(a)
println(a)


func square1 (inout number:Double)
{
    number = number * number
}

var a1 = 2.0

square1(&a1)
println(a1)


class Person
{
    var age = 34 ,name = "Colin"
    func growOlder()
    {
        self.age++
    }
}

func celebrationBirthDay(cupleano : Person)
{
  println("Happly b'day \(cupleano.name)")
  cupleano.growOlder()
}

let person = Person()
celebrationBirthDay(person)

println(person.age)



func longestWord(words:String...) -> String?
{
    var currentLongetString :String?
    
    for word in words
    {
        if currentLongetString != nil {
            if countElements(word) > countElements(currentLongetString!){
                currentLongetString = word
            }
        }
        else {
         currentLongetString = word
        }
    }
    return currentLongetString
}

let longest = longestWord("cat","dog","mouse", "hourse")

println(longest)

var row  = 10,column = 20
func move (x:Int = 0, y :Int = 0)
{
    row += x
    column += y
    
    println("row \(row) , column \(column)")
}

move(x :20,y :30)
move(x :20)
move(y :10)


class Cell: Printable {
    private(set) var row = 0
    private(set) var column = 0    func move(x: Int, y: Int)
    {
        row += y    column += x
    }    func moveByX(x: Int) {
        column += x    }    func moveByY(y: Int) {
        column += y    }    var description: String {
        get {        return "Cell [row=\(row), col=\(column)]" }    }
}

var cell = Cell()
var instaceFuc = cell.moveByY
instaceFuc(34)

var cell1 = Cell()

var classFunc = Cell.moveByY

classFunc(cell)(35)

let animals = ["cat","dog","cow". "horse"]

func isBefore (one:String,two:String) -> Bool
{
    return one > two
}

let sortString = animals.sorted(isBefore)

let newsort = animals.sorted({
    (one:String,two:String) ->Bool in return one > two
    })

let new1Sort= animals.sorted({(one,two) -> Bool in return one > two})


let sortedStrings1 = animals.sorted({ (one, two) -> Bool in    one > two    })

let sortedStrings2 = animals.sorted({ (one, two)  in    one > two    })

let sortedStrings3 = animals.sorted({one, two -> Bool in        one > two        })

let sortedStrings4 = animals.sorted({ $0 > $1 })

let sortedStrings5 = animals.sorted(){ $0 > $1 }

let sortedStrings6 = animals.sorted { $0 > $1 }

let sortedStrings7 = animals.sorted(>)


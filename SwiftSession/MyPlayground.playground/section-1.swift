// Playground - noun: a place where people can play

import UIKit


// Swift string

var str = "Hello, playground"



var emptyString = ""

var newemptyString = String()

if emptyString == newemptyString
{
    print("They are equal ")
}


emptyString.isEmpty

newemptyString.isEmpty




let nubmer: UInt16 = 2_000

let  number1:UInt8 = 1

// can't sum on the variable type (different type)
let sum = nubmer + UInt16(number1)

let touple = (404,"Page not found")

print(touple)

touple.0
touple.1


var a:Int?;


var b  = 10

var c = (a ?? b)

// this statement is equal to 


var d = a != nil ? a! :b



//decompose a touple 

let (numbererror,errormessage) = touple

print(numbererror ,"\(errormessage)")

let stringnumber:String = "1234"


//var numberoo = stringnumber.toInt()

if let convertnumber = Int(stringnumber)
{
    print(convertnumber)
}


var optionalstring: String? = "This is optional string"

print(optionalstring!.uppercaseString)

var optionalautounwrap :String! = "this is auto unwrap string"

print(optionalautounwrap)



let age  = 3

assert(age >= 0, "Age can't be less the zero ")



// Swift Array

// Array type Int

var myarray :[Int] = [1,2,3]

myarray += [4]

//Array type Int  by init

var intarray = [5,6]

//Array they string

var mystring = ["You","me","we","us"]

// add more string
mystring += ["I","why"]

// change array values in between
mystring[2..<5] = ["what","the","fuck"]

mystring[0]




//Swift dicitinary 

var mydicitonary = ["my":1,"your":2,"yes":3]

// set dic value
mydicitonary["my"] = 3

mydicitonary


// while loop

var complete:Int = 0

while (complete != 10)
{
    print("downloading ...")
    complete++
}



// for loop

for var index = 0 ;index < 10 ;index++
{
    print("value index")
}

// for ... uper limit inclusive
for  index in 1...10
{
    print("C yaa paa")
}

// for ..< uper limit exclusive

for index in 1..<10
{
    print("bada ciya paa")
}

// for loop for dicitonay
for (mydicitonaryName,mydicitonaryValue) in mydicitonary
    
{
    print("\(mydicitonaryName) = \(mydicitonaryValue)")
}

var case1 = 1,case2 = 2 ,case3 = 3

if case1 == 1
{
    print("value of complete \(complete)")
}
else if case2 != 3
{
    print("valuse of \(mydicitonary)")
}

// swift touple

var address = (743,"hill road")

print(address.0)
print(address.1)

// distruct of touple

var (house,place) = address

print(house)
print(place)


var newaddress = (number :754,place :"its new pleace")


print(newaddress.number)
print(newaddress.place)


print("I live at \(newaddress.number)  ,\(newaddress.place)" )


let greeting = "I alwasy rocks !"

for i in 1...5
{
  print("\(i) - \(greeting)"  )
    
}

for i in 1...3
{
    print(i)
}



var whileloo = 0

while whileloo < 5
{
print("durgesh\(whileloo)")
  whileloo++
}


var dirextion = "show"

switch  (dirextion)
{
    case "up":
    
    print("dirextion up")
    
    case "down":
        
    print("direction down")
    
    case "nowhere" ,"some where ":
    
    print("what the hell is this ")
    
default:
    
    print("lower down")
}


var number = 750

switch (number)
{

case 500..<750:
print ("this is the number ")

case 700...850:
println("stupid number ")
    
default:
    println("not a number ")
}


switch (number1)
{
case 1:
    println("1")
 
case 2,3,4 :
    println("2 3 4")
    
default :
    println(" NO value")
}

let pointvalue = (10,20)

switch pointvalue
{
case (1,2):
    println("1 ,2 ")
    
case (10,20) :
    println("10 20")
 
case (_ ,30):
    println("some value")
    
    
case (-2...2,-3...3):
    println("odd values")
    
default :
    println("some value")
}

let somepoint = (1,0)

switch somepoint
{
case (let x ,0):
    println("\(x) ,y")
case let (x, y):
    println("\(x) \(y)")
default :
    println("some value")
}


let xy = (2,4)

switch xy
{
case let (x, y) where x == y :
    println("1")
case let (x, y) where x == -y :
    println("2")
default :
    println("some value")
}


let aprimenumber = 23

switch aprimenumber
{
case 23 :
    println("prime number ")
    fallthrough
default :
    println("also a integer")
    
}


//var str : String?
//
//
//println(str)

var newstr:String = "This is the string value"

println(newstr)

//if let str1 = newstr {
//
//    println("Unwraped! \(str1.uppercaseString)")
//
//}

// optional string  can be nill  so required a unwrap 

var helloStr :String? = "Hello String !!"


println("UNwrapString ! \(helloStr!.uppercaseString)")

var hello1 :String! = "Heer It will Auto Unwrap !!!!"

println(hello1.uppercaseString)


var hello2 :String? = " Here iT will aluto check null for String"

println(hello2?.uppercaseString)






//<<<<****** SWIFT ARRAY *********** >>>

var array = [1,2,3,4,5]
println(array)

array.append(5)

println(array)

array.extend(4...8)


var newarray :[Int] = [2,4,5]

let constatnarray = [3,4,4,4]



//*** Dictionary *** 


var dictionay = [1: "one", 2:"two"]

println(dictionay)


var newdictionay :[Int:String]


newdictionay = [3:"three", 4:"four"]

println(newdictionay.startIndex)



let constdic = [1:"one",2:"two"]



/// Class and Struct ******** 



class MYclass
{
    var fool :Double = 0.0
}


struct MYStruct {
    var fool :Double = 0.0
}


var mystruct :MYStruct = MYStruct()

let myclass :MYclass = MYclass()

mystruct.fool = 1.0

myclass.fool = 1.0

var myclass1  = MYclass()

var mystruct1 = MYStruct()

mystruct = mystruct1
// this not possible      myclass =  myclass1


///   It not to late to start learning swift from the Apple Swift book  /////


let explicitString  = "Hello this is a string type "

let explicitNumber = 2

let typecastNumberintostring = explicitString + String(explicitNumber)

// this can be done this way also 

println( "Hello this is the way  \(explicitNumber)")


// Array 

//1
var newArray = ["hello", "hi", "whay" ,"what us this"]
//2
var shopinglist = []
//3
var thisaraay :[Int] = [1,2,3]
//4
var emptyarray = [String]()

newArray[1]

newArray[2] = "stupid"

newArray



//emptyarray[0] = "hello"

emptyarray.append("hello")

newArray

newArray.insert("that it ", atIndex: 1)

newArray += ["hu tu tu tu "]
//shopinglist[0] = 1
for (number,name) in enumerate(newArray)
{
    println("index \(number)  element  \(name)")
}

var myArray = ["One", "Two", "Three", "Four", "Five"]

var subsetArray = myArray[0...2]

subsetArray


var array1 = [String]()

array1 += ["hello"]


for item in array1
{
    println(item)
}

for (number,item) in enumerate(array1)
{
    println("\(number),\(item)");
}


for _ in array1
{
    println("hello")
}

var newArraytype = [Int](count: 10, repeatedValue: 10)

// Dictionary in swift


var newDictionay = ["key" : "value","key1" : "value1" ,"key2" : "value3"]

newDictionay["key4"] = "value4"

newDictionay


var mydictionay = [:]

var NewDictionay :[String :String!] = ["key" : "value"]

var dic = [String:String?] ()

dic["1"] = "one"

dic["2"] = "two"

println(dic)


var emptyDic = [Int:String]()

let oldvalue = NewDictionay.updateValue("chutiya pa", forKey: "key")

oldvalue

for (key,value) in NewDictionay
{
    println("\(key) , \(value)")
}



let arrayformDic = [String](NewDictionay.keys)

//let arrayformDic1 = [String](NewDictionay.values)


/// Swift functions  >>>>>>>>>>>>>

func helloSwift(name :String) -> String{

    let newmessage  = " Hello \(name) !!"
    return newmessage

}

println(helloSwift("What the fuck this is a fucntion"));

func touple(max:Int, min:Int) -> (min :Int,max:Int)
{
     return (min,max)
}

func join(string s1:String ,toString s2:String)-> String{
   
    return s1 + s2
}

join(string: "hello", toString: "Word !!!")


func join(#name :String ,#lastname:String)-> String
{
    return name + lastname
}

join(name: "Durgesh", lastname: "Trivedi")


func arithmatic (#average :Double...)->Double
{
    var sum :Double = 0
    for number in average
    {
        sum+=number
    }
    
    return sum
}

arithmatic(average: 1,2,3,4,5)

arithmatic(average: 0.2,0,4,0.4)

func right(var name:String,lastname :String)
{
    var naam = name + lastname
}

func swap(inout newname:String,oldname :String)
{
     var temp = newname
    
    newname = oldname
    
    temp = oldname
}

var naam = "Durgesh"
var thatit = "Deva"
swap(&naam, thatit)

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


let string = array.map
    {
        (var number) -> String in
        var output = 0
        
        while number > 0
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


//// Enumeration ////


enum Week
{
   case sunday,monday,tuesday,wednesday,thursday,friday,saturday
}

enum BarCode
{
    case UPA(Int,Int,Int,Int)
    case BCA(String)
}

var pUPABarcode = BarCode.UPA(10, 2000, 8764, 0)


switch pUPABarcode

{
case .UPA(let number ,let number1,let number2,let number3):
    print("UPAD:Code \(number), \(number1),\(number2) ,\(number3)")
case .BCA(let code):
    
    print("BCA :Code \(code) ")
}


switch pUPABarcode
    
{
case let .UPA(number ,number1,number2, number3):
    print("UPAD:Code \(number), \(number1),\(number2) ,\(number3)")
case let .BCA(code):
    
    print("BCA :Code \(code) ")
}


enum WeekDays: Int
{
    case monday = 1 ,tuesday,wednesday,thursday,friday,saturday
}

print (WeekDays.monday.rawValue)


let weekoftheday = WeekDays(rawValue: 5)

let daytofind = 9

if let someplanet = WeekDays(rawValue :daytofind){

    switch someplanet
    {
    case .monday :
        print("here is monday")
        
    default :
        print("some other day")
    }
}else
{
    print("Week is not present");
}


///// *** Struct **** //////


struct newStruct {
    var hello = 0
    var what :String
    var resolution : Resolution
}


class Resolution
{
    var resolution = "Hello"
    var mond = 0.0
}

let firstuct = newStruct(hello: 10, what: "this is what" ,resolution :Resolution())
let Resolve = Resolution()

struct Point
{
    var x  = 0.0
    var y  = 0.0
}

struct sizs
{
    var width = 0.0
    var hight = 0.0
}

struct Rect
{
    var origin = Point()
    var size = sizs()
    
    var center :Point{
        
        get {
            
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.hight / 2)
            return Point (x:centerX,y:centerY)
      }
        set (newCenter)
        {
            origin.x  = newCenter.x
            origin.y = newCenter.y
        }
    }
}


var address1 = (734,"This is my address")

let (house1,street) = address1

print(house1)
print(address1)








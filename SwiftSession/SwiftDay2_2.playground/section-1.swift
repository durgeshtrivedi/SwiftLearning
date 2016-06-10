//// Playground - noun: a place where people can play
//
//import UIKit
//
//
//
//let words = ["Cat", "Cow", "Horse", "Lion" , "Monkey"]
//
//typealias Entry = (Character,[String])
//
//func buildIndex(words:[String]) ->[Entry]
//    {
//        var result = [Entry]()
//        
//        var letters = [Character] ()
//        
//        for word in words
//        {
//             let firstLetter = Character(word.substringToIndex(advance(word.startIndex, 1)).uppercaseString)
//            
//            
//            if !contains(letters, firstLetter)
//            {
//                letters.append(firstLetter)
//            }
//        }
//
//        for letter in letters
//        {
//            var wordforletter = [String]()
//            
//            for word in words
//            {
//                let firstLette = Character(word.substringToIndex(advance(word.startIndex, 1)).uppercaseString)
//              
//                if firstLette == letter{
//                
//                        wordforletter.append(word)
//                }
//            
//            }
//            
//            result.append((letter,wordforletter))
//            
//        }
//        return result
//}
//
//
//func buildIndex1(words: [String]) ->[Entry]
//{
//    let letters = words.map {
//        
//        
//        
//            (word)->Character in
//    
//        Character(word.substringToIndex(advance(word.startIndex, 1)).uppercaseString)
//    }
//    
//    print(letters)
//    
//    let distictLetter = distinct(letters)
//    print(distictLetter)
//    return distictLetter.map{(letter) ->Entry in
//        return (letter,words.filter{
//            (word) -> Bool in
//           Character(word.substringToIndex(advance(word.startIndex, 1)).uppercaseString) == letter
//        })
//    }
//
//}
//
//func distinct<T:Equatable>(source:  [T]) ->[T]{
//
//    var unique  = [T]()
//    
//    for item in source{
//    
//        if !contains(unique, item){
//        unique.append(item)
//        }
//    }
//    return unique
//}
//
//protocol SomeProtocol
//
//{
//    var name :String {get set}
//    var address:String {get}
//    
//}
//
//////String Type
//var  hello  = "😄"
//println(hello)
//
//var newString = "hello"
//
//newString += hello
//
//var dog :Character = "😡"
//
//newString.append(dog)
//
//var  pencil = "✏️"
//
//println(pencil)
//
//
//
//var value1 = ""
//
//var value2 = ""
//
//value1 == value2
//
//value1.isEmpty
//
//value1 = "kamine"
//
//value2 = "kaMIne"
//
//value1.capitalizedString == value2.capitalizedString
//
//value1 = "1.10"
//
//var intValue = ( value1 as NSString ).doubleValue
//
//var integer  = 10
//
//var double = 10.1
//
//var dobule1 = integer + Int(double)
//
//println(dobule1)
//
//
//
//var dictionary = [:]
//
//dictionary = [1 : "one", 2 : "two"]
//
//
//for (number ,value) in dictionary
//{
//    println("number \(number) and \(value) ")
//}
//
//
//var array = [1,2,3,4]
//
//for _ in 1...5{
//  println("one")
//}
//
//
//var suffix = "Durgesh Trivedi"
//
//suffix.hasSuffix("Trivedi")
//
//suffix.hasPrefix("Durgesh")
//


//>>>>>>>>>>>>>>>>>>>>>>>>>>> //Optional <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<//

//var string  = "Hello Word"

//var string :String = "Hello Word"

//var string :String?



var string :String!

//var string :String? = "hello word"

//var string :String! = "hello word"

if string != nil {
    let intString = String(string!)
    println(intString)
}


if let string = string
{
    println(string.uppercaseString)
}


println(string?.uppercaseString)

//println(string!.uppercaseString)


 var newstring = string ?? "what is this "

    println(newstring.uppercaseString)

//you can't access an optional value directly. You must unwrap the optional first to access its underlying value



//default value for function parameter


func doesntEnterNumber(x: Int? = 5 ) -> Bool? {
    println(x)
    if (x > 5)
    {
     return true
    }
    
    else
    {
        return false
    }

 
}

var value  = doesntEnterNumber(x:nil)


//func returnString() -> String{
//    return nil
//}
//
//give error 'NilLiteralConvertible'


protocol NilLiteralConvertible {
    init(nilLiteral: ())
}


/// (optional tuple) //////////





//var array = [1,2,3,4,5,100]

//var array:[Int]!

var array:[Int]?

//var array:[Int]! = [1,2,3,4,5,100]

//var array:[Int]? = [1,2,3,4,5,100]


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


//var bound:(min :Int,max :Int)

var bound:(min :Int?,max :Int?)



//bound = minMax(array!)!
//println(bound.min)
//println(bound.max)
//
//
//bound  =  minMax(array!)!
//println(bound.min)
//println(bound.max)


if let newarray = array
{
    bound = minMax(newarray)!
}




if let newarray = array
{
    
    if let newarray = minMax(newarray)
    {
        bound = newarray
        println(bound.min)
        println(bound.max)
    }
}



if  let newbound = minMax(array!)
{
    println(bound.min)
    println(bound.max)
    
}




//optional binding  old way


let a = "10".toInt()
let b = "5".toInt()
let c = "3".toInt()

if let a = a {
    if let b = b {
        if let c = c {
            if c != 0 {
                println("(a + b) / c = \((a + b) / c)")
            }
        }
    }
}


//new way  swift 1.2

if let a = a ,b = b ,c = c where c != 0
{
    println("(a + b) / c = \((a + b) / c)")
}



















// (optional chaning ) // 



//class Animal
//{
//    var dog:Dog!
//    
//    init (name:Dog)
//    {
//        self.dog = name
//    }
//    
//    init()
//    {
//    }
//}
//
//
//class Dog
//{
//    var name :String?
//    
//    init(name :String)
//    {
//        self.name = name
//    }
//    
//    func nameoftheDog -> (String?)
//    {
//        return name
//    }
//    
//}
//
////var dog = Dog (name: "Babu")
////var animal1 :Animal = Animal(name: dog)
//var animal :Animal = Animal()
//
////animal.dog = dog
//
//println(animal.dog.name)
//
//
//if let animal = animal.dog.name
//{
//    println(animal)
//}
//else
//{
//    println("Ther is no name for dog")
//}







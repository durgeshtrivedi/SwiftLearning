// Playground - noun: a place where people can play

import UIKit
import Foundation


println("My playground")

var mystring = "This is the first play ground"

println(mystring)


var string1 :String = "This is the string type variable"

println(string1)


string1 = "1"

println(string1)


string1 += " hello word"

string1.append(Character("!"))


var newString = string1.capitalizedString

println(newString)


var onenew  = "The new string ".stringByAppendingString("what is new here ")

println(onenew)

// This become copy of the string1

var copystring = string1

println(copystring)

println(copystring.stringByAppendingString("New  change in the string"))

println(string1)


var radius = 3

let pi = 3.14159


var circleArea = Double(radius) * Double(radius) * pi



// var overflow = Int.max + 1

//Tuple

var address = (7444 ,string1,onenew)

address.0
address.1

var address1 : (Int,String,String) = (566, "hello","word")

println(address1.1 + address1.2)

// destruct tuple 

let (house,street,ad) = address

house
street
ad


var socity = (address: 22 ,floor : 5 ,flat : 25 ,name :"rock")

socity.address
socity.flat
socity.name
socity.floor






enum Share : Int
{
    case Card
    case Heart
    case Black
    case House
}

var Shape = Share.Card

Shape.rawValue


var shape = Share(rawValue: 2)

shape

enum NewShape :String{

    case Rectangle = "Rectangle"
    case Square = "SQuare"
}

var shapeType = NewShape.Rectangle
switch(shapeType)
{
    
case .Rectangle :
    println(\(shapeType))

default :
    break//println(\(shapeType))
}

enum LargeShape {
    
    case Rectangle  (Float,Float)
    case Square (Float)
    case Triangle (Float,Float)
}

enum LargeShape1 {
    
    case Rectangle  (width :Float,height :Float)
    case Square (side: Float)
    case Triangle (edgeL :Float,edgeR :Float)
    case Circle (radious :Float)
    
    func area() -> Float {    switch(self) {    case .Rectangle(let width, let height):        return width * height
    case .Square(let side):            return side * side    case .Triangle(let base, let height):            return 0.5 * base * height
    case .Circle(let radius):        return Float(M_PI) * powf(radius, 2)
        
        }    }
    
    
    init(_ rect: CGRect) {                let width = Float(CGRectGetWidth(rect))
                let height = Float(CGRectGetHeight(rect))
                if width == height
        {            self = Square(width)
        }
            else
        {        self = Rectangle(width: width, height: height)
                }    }

}



var rectangle = LargeShape.Rectangle(4, 8)


switch(rectangle)
{
case .Rectangle (let width,let hight):
    println("\(width) ,\(hight)")
    
case .Rectangle (let width,let hight) where width != 0 :
     println("\(width) ,\(hight)")
default:
    break
}



var circle = LargeShape1.Circle(radious: 5)

circle.area()



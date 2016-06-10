//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var house = "myhouse"

var home = house

if home == house
{
    print("Yes they are same")
}
    
else {
    print ("not same")
}

var new1:String = "123"

var new2:String = "123"

var new3 = new2

var new4 = String("123")

class Name {
    
}

var name :Name = Name()
var newName = Name()

if new1 == new2
{
    print("Refering same object")
}


if name === newName
{
    print("Refering same object")
}

if new1 == new3
{
    print("Refering same object")
}

if new4 == new3
{
    print("Refering same object")
}

var welcome = "hello"

var newwelcome = welcome
welcome.insert("!", atIndex: welcome.endIndex)

print(newwelcome)


var variableString = "Horse"

var newstring = variableString
variableString +=  "and carriage"


print(newstring)

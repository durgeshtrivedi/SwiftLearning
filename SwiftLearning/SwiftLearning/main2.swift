//
//  Revise.swift
//  SwiftLearning
//
//  Created by Durgesh Trivedi on 26/05/16.
//  Copyright © 2016 durgesh. All rights reserved.
//

import Foundation

   // print("Hello word !!!")
func myvalue ()
{
    var a = 1
    
    var touple = (1,"hello")

    print ("\(touple.0) , \(touple.1)")
   
    let statusCode = (status :10 ,code :"Value")
    print ("\(statusCode.status),\(statusCode.code) ")
    
    let myvalue :String?
     myvalue = "Now it is haveing value"
    if let myvalue = myvalue
    {
      print("IT is not nil !!!")
        print(myvalue)
    }
    else{
        print ("ITs NIll !!!")
        
    }
   
  if let newvla = myvalue where myvalue != ""
  {
    print(newvla)
    
    }
  
    for index in 1...10
       {print("Hello  \(index)")}
    
    let newstring :[Character] = ["C","h","a","r","c","t","e","r","!"]
    
    var stringname = String(newstring)
    
    for index in stringname.characters.indices   // travesrse string using index
    {
        print(stringname[index])
    
    }
    
    let values = "Durgesh"
    
    stringname.insert("@", atIndex: stringname.endIndex)  // add string at index
    
   stringname.insertContentsOf(values.characters, at: stringname.endIndex)
    
    //Arrays 
    
    var string = [String]()
    
    string = [String](count:3,repeatedValue: "Hello" )
    
    var string1 :[String] = ["hello1","hello2"]
    
    string1.append("hello2")
    
    string1 += ["5","6"]
    
    for (index,value) in string1.enumerate()
    {
        print("\(index) and \(value)")
        
    }
    
    var myset :Set<Int> = [1,2,3,4,5]
    
    var yourset:Set = [3,4,5,6]
    
    var newset = myset.intersect(yourset).sort()
    
    let val = (1,10)
    
    switch val {
    case let(x,y) where x == 1 && y==2 :
        
        print ("its here they matcher ")
    default:
        print ("its here they not match ")
    }
    
    var dict :[String:String]? = ["1":"Hello"]
    
    guard let newVal = dict else
    {
            print ("THere is not values")
    }
    
    func addNumber(a :Int ,b: Int) -> Int
    {
        return a * b
    }
    
    var myfunction :(Int,Int) -> Int = addNumber
    
    myfunction(2,3)

    func newFunction (newFunction :(Int,Int)->Int ,value :Int,valu :Int) -> (Int,Int) ->Int
    {
        let add = newFunction(value,valu)
        
        return addNumber
    }
    
    func compare (a:Int,b:Int) ->Bool
    {
        return a>b
    }
    
    var numbers1 = [1,2,3,4,5]
    
    var comp = numbers1.sort(compare)
    
    
    numbers1.sort({(a:Int,b:Int) ->Bool in return a<b})
    
    numbers1.sort({a,b in a<b})
    
    
    numbers1.sort({$0 < $1})
    
    numbers1.sort(<)
    
    numbers1.sort(){$0 < $1}
    
    
    var completionHandler :[()->Void] = []
    
    func SomeCompletionhandlerEscapingCloser (compleHandler :()->Void)
    {
        completionHandler.append(compleHandler)
    }
    
}



//myvalue()
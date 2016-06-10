//
//  NewSwift.swift
//  SwiftLearning
//
//  Created by Durgesh Trivedi on 27/05/16.
//  Copyright © 2016 durgesh. All rights reserved.
//

import Foundation


//enum Planet{
//
//    case Mercury,Earth,Vinus
//}
//
//enum Code
//{
//    case BarCode(Int,Int,Int,Int)
//    case QRCode (String)
//}
//
//
//enum PlanetFord :Int{
//case NewEarth,NewJupitor
//}
//
//func enumTest()
//{
//
//var myplanet = Planet.Mercury
//
//switch myplanet{
//
//case .Mercury:
//    print("Lots of planets have a north")
//case .Earth:
//     print("Lots of planets have a north")
//    
//    
//case .Vinus:
//    print("Lots of planets have a north")
//    }
//
//  var barValue  = Code.BarCode(10, 20, 30, 40)
//    
//  
////    switch barValue {
////    
////    case .BarCode (let x, let y, let z,let w) :
////              print("This is bar code")
////    case .QRCode(var g):
////              print ("THis is QRCode")
////    
////    }
// let newPlanet = PlanetFord.NewEarth.rawValue
//    
//    
//}


struct MYSchool{
    var name :String = "hello" {
        
        willSet(newValue){
          print("The vlaue for this properties is will set")
        }
        
        didSet
        {
            print("The vlaue of this property did set \(name)")
        }
        
   
    }
    var section :String {
      return "Hello"
    }
    
    var myname : String {
            get{
    
              return self.name;
            }
            set (nameVal){
                //myname = nameVal
                 print("Value of myname \(nameVal)")
        }}
    
   
}

    
var school = MYSchool(name: "Hello");

school.name = "UPS"

print(school.name)

school.myname = "Durgesh"
print(school.myname)


func LocalVarialble()
{

    var local :String {
        get {
          return  "Mr"
        }
    
    }

    var myGlobale:String = "what is this"{
        willSet (newVale){
           print("This value os beign set")
        }
        didSet {
            print("This is new value")
        }
    }

}


struct Point
{
    var x,y :String
    
    mutating func changeValue ()
    {
       self = Point(x: "1",y: "2")
    }
    
}


class School
{
    var schoolname :String = ""
    
     init (name :String)
    {
        //self.init()
        self.schoolname = name
        
    }
    init(){
    print("Scool initilize")
    }
}

class Classes :School

{
    var className :String
   override init (name className :String)
    {
        self.className = className
        super.init(name: "UPSC")
    }
    
    init (schoolName :String,className:String)
    {
        self.className = className
        super.init(name: schoolName)
    }
    
    convenience init(schoolNam:String,clasName:String)
    {
        self.init(schoolName: schoolNam,className:clasName)
    }
}

var  class1 = Classes(name: "PSC")


print("This is schoole name \(class1.schoolname)")


var school1 :[AnyObject] = [School(),School(),School(),School()]

for schools in school1 as! [School]
{
 print (schools.schoolname)
}


protocol SomeProtocol {
    var value :String {set get }
}

// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//// willSet and didSet///////


class StepCounter
{
    var totalSteps :Int = 0 {
        willSet(newStep)
        {
            println(  "About to step  \(newStep)"  )
        }
        didSet{
            if totalSteps > oldValue
            {
                println("Added new step \(totalSteps - oldValue)")
            }
        }
    }
}


enum StaicValues
{
    static var number = 10
    static let string = " Hello word"
}

struct staticStruct {
    static var integer = 1
    static let  contstnstring = "what is this "
    
    static var iter :Int = 10
}

class staticvaraible
{
    class var number:Int
    {
       return 1
    }
    
    class var string :String
    {
        return "number"
    }
   // class var interver: Int = 1
    
}


class Counter  {
    var count :Int = 10
    
    
    func increment() -> Int
    {
        return count++
    }
    
    func Print ()
    {
        println(self.increment())
    }
    
}

struct mutatingStruct {
    var number :Int = 10
    
    mutating func valuechange (numver:Int)
    {
        number = numver + 120
    }
    
    mutating func changSelf(did :Int)
    {
        self = mutatingStruct()
    }
}


enum TriStateSwitch
{
    case off,low,high
    
    mutating func next()
    {
    switch self
    {
    case .off :
      self = low
    case .low :
        
        self = high
    case .high :
        
        self = off
        
        
        }
    }
    
    subscript(index:Int) ->Int
        {
        get{
            return 1
        }
        set(newValue)
        {
            
        }
    }

}

struct TimeTable {
    var multiplier  :Int
    subscript (index :Int)->Int
        {
          return multiplier * index
    }
}

let timetravler = TimeTable(multiplier: 3)


println("The value of the mutiplier \(timetravler[5])")


struct Matrix
{
    let rows:Int ,columns :Int
    var grid:[Double]
    init(rows :Int ,columns :Int)
    {
        self.rows = rows
        self.columns = columns
        grid = Array(count :rows*columns, repeatedValue :0.0)
    }
    
    subscript (row :Int ,column :Int) -> Double
    {
        get{

            return grid[(row * columns) + column]
    }
        
        set
        {
            grid[ (row * columns) + column] = newValue
        }
    }
    
}

var newMatric = Matrix(rows :2,columns:2)

newMatric[0,1] = 1.0

newMatric[1,0] = 2.0


class Vechile {
    var wheels = 4
    
    func description ()
    {
        println("This is a super cool car")
    }
    
    func makeNoise () -> String
    {
        return "Dhin chak dhin chak"
    }
}

class Car: Vechile {
    var gears  = 4
    
     override func description() {
        println("This is a MAruti car ")
    }
    
    override func makeNoise() -> String {
        return super.makeNoise() + "chuk chuk chuuuuuuu"
    }
}


var vechile  = Car()

println(vechile.makeNoise())

class Person
{
    var resident :Resident?
}



class Room {
    
    let name:String
    init(name :String){ self.name = name}
}

class Resident
{
    var rooms =  [Room]()
    var numberofrooms : Int
    {
        return rooms.count
    }
    var address :Address?
    subscript(i:Int) -> Room{
     get{
       return rooms[i]
    }
    set{
        rooms[i] = newValue
    }
}

}

class Address
{
    var buildingName :String?
    var buildingNumber :String?
    var street :String?
    
    func buidingIdentifire () -> String? {
        if buildingName != nil {
            return buildingName
        }
       else if buildingNumber != nil
        {
            return buildingNumber
        }
        else
        {
            return nil
        }
    }
}


let  johnAddress = Address()

johnAddress.buildingNumber = "20"
johnAddress.buildingName  = "Sai vihar"
johnAddress.street = "street number 10"

let john = Person()

john.resident?.address = johnAddress

if let firstroomname = john.resident?[0].name {
   println("first room name \(firstroomname)")
}


john.resident = Resident()

john.resident?.rooms.append(Room(name : "Living Room"))

john.resident!.rooms.append(Room(name: "Dyning Room"))

println(john.resident?[0].name)

var testStore = ["Dev" :[86,40,50], "test" :[40,50,60]]

testStore["Dev"]?[0] = 50
testStore["test"]?[0]++
testStore["Ram"]?[0] = 80

class MediaItem
{
    var name :String?
    
    init (name :String)
    {
        self.name = name
    }
}

class Movie :MediaItem
{
    var artist :String?
    
    init(name:String,artist:String)
    {
        self.artist = artist
        super.init(name: name)
    }
}

class Song :MediaItem {
    var mediaitem :String?
    
    init(name :String,mediaitem :String)
    {
        self.mediaitem = mediaitem
        super.init(name: name)
    }
}


let library = [Movie (name: "Hello brother",artist: "Amir kahn"),
            Song(name: "Hello boehrt borhter ", mediaitem: "1"),
    Movie (name: "Dies se ",artist: "Akshay kumar"),
    Song(name: "Die se re Dil se re  ", mediaitem: "1"),
Song(name: "Chal chai  ya chai ya chai chal chai ya  ", mediaitem: "2")]


var moviecounrt = 0
var songcount = 0

for media in library
{
    if media is Movie
    {
         moviecounrt++
    }
    else if media is Song
    {
        songcount++;
    }
}

println("The media count in the library is MOvies \(moviecounrt) and Songs \(songcount)")


for media in library
{
    if let movie = media as? Movie {
        println("MOvie name \(movie.name) and artis \(movie.artist)")
    }
    else if let song = media as?Song {
    
        println("MOvie name \(song.name) and artis \(song.mediaitem)")
    }
}


let someObject :[AnyObject] = [Movie (name: "Hello brother",artist: "Amir kahn"),
Movie (name: "Del",artist: "Amir kahn"),
Movie (name: "Khiladi",artist: "Amir kahn")]


for movie in someObject
{
     let newmovie = movie as Movie
       println("MOvie name \(newmovie.name) and artis \(newmovie.artist)")
}

// sort form of that

for movie in someObject as [Movie]
{
    println("MOvie name \(movie.name) and artis \(movie.artist)")
}


var things = [Any]()

things.append(0)

things.append(0.0)

things.append(42)

things.append(43.0)

things.append(42.2343423)

things.append("Hello I am here")

things.append([1,2,3,4])

things.append(["key" :1,"key2": 2])

things.append((3,5))

things.append((3.0,5.0))

things.append(Movie (name: "Khiladi",artist: "Amir kahn"))

things.append{(name :String) -> String in "Hello, \(name)"}

for thing in things
{
    switch thing
    {
    case 0 as Int :
        println("Zero as Int")
        
    case 0 as Double :
        
        println("Zero as Double")
    
    case let someInt as Int:
        println("Some intvalue \(someInt)")
   
    case let someDouble as Double where someDouble > 0.0:
        println("Some dobulevalue \(someDouble)")
    
    case is Double :
        println("Some double")
    
    case let something as String :
        println("Some String \(something)")
        
    case let array as [Int] :
       println("Some array \(array)")
    
    case let dic as [String:Int]:
        println("Dic key values \(dic.keys) and \(dic.values)")
    
    case let (x,y) as (Int,Int) where x > 0 :
        println("value x \(x) and \(y)")
    
    case let (x,y) as (Double,Double) :
        println("value x \(x) and \(y)")
        
    case let movie as Movie :
         println("Some move \(movie.name)")
        
    case let stringConveter as String -> String:
        println( stringConveter("Hell0 Durgesh"))
        
    default :
        println("Some thing else ")
    }
}



/// Initilizer

struct Temperature {
    var farenite:Double
    init()
    {
           farenite = 232.0
    }
}


struct COlOR {
    
    var red:Double, green:Double,blue :Double
    init (_ red :Double,_ green :Double,_ blue :Double)
    {
        self.red = red
        self.green = green
        self.blue = blue
    }
    
    init (white :Double)
    {
        self.red = white
        self.green = white
        self.blue = white
    }
}

var color = COlOR(1.0,2.0,2.5)


class Name
{
    var name:String?
    let surname = "kumar"
    
    init(name:String)
    {
        self.name = name
        surname = "Trivedi"
    }
    
    
}

struct Size {
    var width = 0.0
    var height = 0.0
}

var mysize = Size(width: 10, height: 20)

struct Point {

    var x = 0.0
    var y = 0.0
}

struct Rectangel
{
    var size = Size()
    var point = Point()
    
    init() {}
    
    init(size:Size ,point :Point)
    {
      
        self.size = size
        self.point = point
          printValue()
    }
    
    func printValue()
    {
        println("The of the rectangle is \(size.width) and \(size.height)")
    }
}

let newRectangle = Rectangel()


class Vechilee
{
     var numberofwheel = 0
     var description :String  {
      return "The number of wheels in Vechile \(numberofwheel)"
    }
}


var newVechile = Vechilee()

println(newVechile.description)

class Bicycle: Vechilee {
    override init()
    {
        super.init()
        numberofwheel = 2
    }

}


class Food
{
    var name :String
    
    init (name :String)
    {
        self.name = name
        println(" Super designated Food")
    }
    
    convenience init ()
    {
        println(" Super Convienience Food")
        self.init (name :"[unnamed]")
        
    }
}

var food = Food(name :"This is my food ")

class RecieptIndegrante :Food
{
    var quantity:Int
    
    init (name:String ,quantity:Int)
    {
        println(" Child RecieptIndegrante designated ")
        self.quantity = quantity
        super.init(name:name)
        
    }
    
    override convenience init (name :String)
    {
        println(" Child RecieptIndegrante Convienience")
        self.init(name: name,quantity :1)
    }
}

var reciept = RecieptIndegrante ()


var reciept1 = RecieptIndegrante(name : "Boom")


var reciept2 = RecieptIndegrante(name : "Egg",quantity :6)

class ShopingList :RecieptIndegrante
{
        var purchased = false
    var description : String{
     var output  = "\(quantity) x \(name)"
        output += purchased ? "YES" : "NO"
        return output
        
    }
}

var shopinglist = ShopingList ()

var shopinglist2 = ShopingList (name: "Banana")

var shopinglist3 = ShopingList(name: "Chapati", quantity: 4)


var shopingarray = [shopinglist,shopinglist2,shopinglist3]

for shop in shopingarray
{
    println(shop.description)
   // NSLog(shop.description)
}

// Failable initlizer

struct FoodItem
{
    let vegfood : String
    
    init?(veg:String)
    {
        if veg.isEmpty  {return nil}
        self.vegfood = veg
    }
    
}

var food1 = FoodItem(veg: "")


enum TemperatureUnit
{
    case kelvin, Celcius ,  Faheranite
    
    init?(symbol:Character)
    {
        
        switch symbol
        {
            case "K":
               self = .kelvin
        case "C" :
              self = .Celcius
        
        case "F":
            self = .Faheranite
        
        default :
             return nil
        }
        
    }
}

// Failable initlizer for enum

enum Temprature1 :Character
{
    case faranite = "F" ,calvin = "C" ,Kelvin = "k"
}

let tempr = Temprature1(rawValue: "X")

class Product
{
    let name :String!
    
    init?(name:String)
    {
        if name.isEmpty {return nil}
        self.name = name
    }
}

class CarItem :Product
{
    var quantity:Int!
    init?(name:String,quantity :Int)
    {
        super.init(name: name)
        if quantity < 1 {return nil}
        self.quantity = quantity
    }

}




if let car = CarItem(name: "BMW", quantity: 1){
    println("The is \(car.name)")
}


class Document
{
    var name :String?
    
    init() {}
    
    init?(name:String)
    {
        if name.isEmpty {return nil}
        self.name = name
    }
}

class UNNAmedDocument :Document
{
     override init ()
     {
         super.init()
         self.name = "[UNtitled]"
    }
   
    override init (name :String)
    {
        super.init()
        if name.isEmpty {
          self.name = "[UnnamedDocument]"
        }
        else
        {
          self.name = name
        }
    }
    
}

class SomeClass
{
    let somevalue :Food = {
      
        return Food()
    } ()
}

class SomePerson
{
    var name:String
    
    init (name:String)
    {
        self.name = name
    }
    
    var apartment :Apartment?
    
    deinit
    {
        println("Person left the  apartment")
    }
}

class Apartment {
    var number :Int
    
    init(number:Int)
    {
        self.number = number
    }
    
    
   func numberofapartment() -> Int
    {
        return number
    }
    weak  var tanent :SomePerson?
   deinit
   {
      println("Apartment is empty")
    }
}


var rohan :SomePerson?
rohan = SomePerson(name: "JOhn")

var saivihar :Apartment?
saivihar = Apartment (number: 25)

rohan!.apartment = saivihar

saivihar!.tanent = rohan

rohan = nil
saivihar = nil


let value :(Int,Int) = (10,20)

switch value

{
case (10,20) :
    println("hello")
case (20,10):
     println("word")
    
case (_,30) :
     println("\(value.0)")
case (30,_) :
     println("\(value.1)")

case (let x, let y) :
     println("\(x) and \(y)")
    
case let (x,y):
     println("\(x) and \(y)")
    
case (let x,_):
    println("\(x)")
 
case (let x ,let y) where (x > 10 && y == saivihar?.numberofapartment()):
    println("\(x)")
    
    //should be a unwraped value not optinal ?
case  (saivihar!.numberofapartment(),saivihar!.numberofapartment()):
    println("word")
}


/// ENum type

enum Week
{
    case Sunday,Monday,Tuesday,Wednesday,Thursday,Friday,Saturday
}

var weekday = Week.Sunday

weekday = .Monday  // no need to add the type once initialize
switch weekday
    {
        case .Sunday:
        println("word")
}

enum BarCode
{
    case UPA(Int,Int,Int,Int)
    
    case QRCode(String)
}


var upaCode = BarCode.UPA (10,20,30,40)
 upaCode =    .QRCode("asdfasf1234")

switch upaCode
{
case .UPA(let x, let y,let z ,let w):
    println("UPA:X \(x) and \(y) and \(z) and \(w)")
case .QRCode (let string):
    println("word")
}

enum ASCIValue:Character
    {
    case tab = "\t"
    case newline = "\n"
    case cariage = "\r" //saivihar?.numberofapartment()
}

enum Planets:Int
{
    case Mercury = 1
    case venus
    case Earth
}

enum Fruits :String
{
    case Mango = "AAM"
    case Banana = "Kela"
    case JacFruit = "fanas"
}



println(Fruits.JacFruit.hashValue)
println(Fruits.JacFruit.rawValue)
println(Planets.Earth.rawValue)

var planet = Planets (rawValue: 5)

// it return a optional enum because possible there is no enum with that 
// optional value



println(planet?.rawValue)

// the above code should be like because it return the optional value if there is no maching case

if let newPlanet = Planets (rawValue: 6)
{
    switch newPlanet
    {
    case .Mercury:
        println(newPlanet.rawValue)
    case .Earth:
        
        println(newPlanet.rawValue)
        
    }
}
  else
    {
        println("no value ")
    }
    





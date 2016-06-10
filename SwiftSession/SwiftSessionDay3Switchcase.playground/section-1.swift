


//// Switch case

////STRING value in Switch

var dirextion = "show"

switch  (dirextion)
{
case "up":
    
    println("dirextion up")
    
case "down":
    
    println("direction down")
    
case "nowhere" ,"some where ":
    
    println("what the hell is this ")
    
default:
    
    println("lower down")
}


////RANGE value in Switch

var number = 750

switch (number)
{
    
case 500..<750:
    println ("this is the number ")
    
case 700...850:
    println("stupid number ")
    
default:
    println("not a number ")
}

//Int value in Switch

var number1 = 1

switch (number1)
{
case 1:
    println("1")
    
case 2,3,4 :
    println("2 3 4")
    
default :
    println(" NO value")
}

//Tuple in switch
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



let someObject :[AnyObject] = [Movie (name: "Hello brother",artist: "Amir kahn"),
    Movie (name: "Del",artist: "Amir kahn"),
    Movie (name: "Khiladi",artist: "Amir kahn")]

var things = [Any]()

things.append(0)

things.append(0.0)

things.append(42.0)

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
    
//case  let (x,y) as (Int,Int) where x == 1:
//    println("word")
//
//case (0,0) as (Int,Int):
//    println("word")
//case (0,0) as (Double,Double):
//    println("word")
    
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
default:
    break
}

//Different type of enum values for each case

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


//default value for enum

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
    case Earth = 100
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

// the above code should be like this  because it return the optional value if there is no maching case

if let newPlanet = Planets (rawValue: 6)
{
    switch newPlanet
    {
    case .Mercury:
        println(newPlanet.rawValue)
    case .Earth:
        
        println(newPlanet.rawValue)
    
    // default case is must here to cover all enum cases
    default:
        break
    }
}
else
{
    println("no value ")
}


// 

enum TriSwtichState

{
    case Low,High,Off
    mutating func next ()
    {
        switch self
            {
        case Low :
           self = High
        case High :
            self = Low
        case Off:
            self = Low
            
        }
    }
}

var tristateSwitch = TriSwtichState.Off

tristateSwitch.next()

println("\(tristateSwitch.hashValue)")

tristateSwitch.next()

println("\(tristateSwitch.hashValue)")

tristateSwitch.next()

println("\(tristateSwitch.hashValue)")


// Enum with init()
 

protocol nextMonth
{
    func currentMonth()
}
enum Month:nextMonth
{
    var value
    case Jan,Feb,March,Apr,May
    
    init (hight :Int ,width:Int)
        
    {
        
        switch (hight,width)
        {
        case (let x ,let y) where x == y :
             self = Jan
        }
        self = .Feb
    }
    
     func currentMonth() {
        println(self)
    }
}


var currentMonth = Month(hight: 10,width: 20)

currentMonth

println(currentMonth)




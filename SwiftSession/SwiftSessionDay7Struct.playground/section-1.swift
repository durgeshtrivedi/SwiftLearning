///// *** Struct **** //////

// This is a very good link

//  

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

var resolve = Resolution()

func changeValue(inout resolve:Resolution)
{
     var newResolve = Resolution()
     resolve.resolution = "what is this "
     newResolve.resolution = "Value is changed"
     resolve = newResolve
    println(resolve.resolution)
}

changeValue(&resolve)

println(resolve.resolution)

var structed = newStruct(hello: 10, what: "this is what" ,resolution :Resolution())

func changeValueStruct(inout resolve:newStruct)
{
    var newResolve = newStruct(hello: 11, what: "what" ,resolution :Resolution())
    resolve.hello = 20
    newResolve.hello = 30
    resolve = newResolve
    println(resolve.hello)
}

changeValueStruct(&structed)

println(structed.hello)





// All swift type Boolean,String ,Float,Double ,String,Array and Dictionary are value type and are implemented using struct behing the scene
//enumeration is also value type
//value type is type whose value is copied when passed to a varialbe ,contant or function

// default member wise initilizer
let firstuct = newStruct(hello: 10, what: "this is what" ,resolution :Resolution())
let Resolve = Resolution()

firstuct.resolution.resolution = "what"

//This will not work
//firstuct.resolution = Resolve

var newstruct = firstuct

newstruct.resolution.resolution = "what is this "

println(newstruct.resolution.resolution)
println(firstuct.resolution.resolution)


var firstuct1 = newStruct(hello: 11, what: " thats it" ,resolution :Resolution())

var secondstruct =  firstuct1

firstuct1.hello = 20

println(firstuct1.hello)
println(secondstruct.hello)


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

var rect = Rect()
var rect1 = rect

var address1 = (734,"This is my address")
var newaddress = address1

let (house1,street) = address1

println(house1)
println(address1)


//Value type want ot be inert(lacking ability or strength to move)
   //single owner of the object it provide the method for the value to opertate or make it mutate


//Value type  want to be isolated
   // not multiple owner

//Value type want to be interchangable
    // pass by value means you cna change the data inside that


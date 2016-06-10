
// Typed properties 

class  StaticINClass
{
    static var number :Int  = 10
    static let name :String = "Durgesh"
    
    class var myname :String {
     return  "sdfbnvnbnbbns"
    }
    
    
    static var ddd :String {
        return  "sdfbnvnbnbbns"
    }
}



class  newClass :StaticINClass
{
    override static var myname :String {
        return "sdfsdfasfsafsdf"
    }
    
//   override class var ddd :String {
//        return  "sdfbnvnbnbbns"
//    }
}

class  MyClass :newClass
{
//    override static  var myname :String {
//        return  "sdzxcvzxfsd"
//    }
}

print(newClass.myname)
print(StaticINClass.myname)
//print(newClass().myname)


// protocol 

protocol MYProtocol
{
    
}


// Property Requirement 

//A protocol can require and conforming type to provide  an instance  property  or type property  with a particular name and type


// Protocol not specified a property is a stored property or computed property it only specify the name and type 

//Protocol also specify the property has settable or settable and gettable both

//Properties are always declaredas variable properties 



// if a protocol required as a gettalbe property than requirement can be satisfied with any type of property and it can be settable for your own code

protocol SomeProtocol

{
    var someproperties:String { get set }
    
    var nottobesettable :Int {get}
    
    // Type properties alwasy has static keyword when define in protocol .In class it can have classor static keyword
    static var typedproperty:Int {set get}
}


protocol MyName
{
    var fullname:String {set get}
}

struct  Name :MyName
{
    var fullname :String
}


var name = Name(fullname: "Durgesh")


class 





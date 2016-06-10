
// Collection  Types Array and dictionary

// Swift Array


//1  Array of type string

var newArray = ["hello", "hi", "whay" ,"what us this"]
//2
//var shopinglist = []

//3 array of type int value

var thisaraay :[Int] = [1,2,3]


//4 empty array of type string
var emptyarray = [String]()


//immutable array

let shopinglist = ["hello","what"]

//shopinglist.append("who")
//var  anyobject : Array<AnyObject> = ["1", "2" ,3]


// if let number = amyobject[2] as Int
//{
//    
//}

newArray[1] = "Man"

// edit a alrray element

newArray[2] = "Wonman"


newArray = ["hello", "hi", "whay" ,"what us this"]

var myarray :[Int] = [1,2,3]

myarray += [4]

//Array type Int  by init

var intarray = [5,6]

//Array they string

var mystring = ["You","me","we","us"]

// add more string
mystring += ["I","why"]

// change array values in a range
mystring[2..<5] = ["what","the","fuck"]

mystring[0]

// adding to array 

var merger = mystring + newArray

//remove item at index
mystring.removeAtIndex(0)

mystring.removeLast()

mystring.removeRange(0...1)

// remove all element from the array

mystring = []

mystring.removeAll(keepCapacity: true)

//append on or more item in the array

emptyarray.append("hello")

//insert item at location

newArray.insert("that it ", atIndex: 1)

//append more item in the array

newArray += ["hu tu tu tu "]

// enumerate an array
for (number,name) in enumerate(newArray)
{
    println("index \(number)  element  \(name)")
}

var myArray = ["One", "Two", "Three", "Four", "Five"]

//store a range for an array

var subsetArray = myArray[0...2]

println(subsetArray)

//init a empty array of type string

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

// repeate a value in a array while init

var newArraytype = [Int](count: 10, repeatedValue: 10)


if newArraytype.isEmpty
{
     println("is empty")
}


var newSet = Set<String>()

newSet.insert("a")

let set: Set<String> = ["1","2","3"]

let set1 :Set<String> = ["1","2","a","b","c","d"]

//var newset :Set<AnyObject> = ["1", 2]



//union ,substraction ,intersect ,exclusiveor



set.intersect(set1)

set.union(set1)

set.exclusiveOr(set1)

set.subtract(set1)

set.isSubsetOf(set1)

set.isSupersetOf(set1)





//Swift dicitinary

var mydicitonary1 = ["my":"1","your":"2","yes":"3"]

var mydicitonary = ["my":1,"your":2,"yes":3]

// set dic value
mydicitonary["my"] = 3

mydicitonary


let newdict = [String:Int]()

//newdic["sd"] = 1





//Behind the scene array and dictionary in swift are generic collections


// Dictionary in swift


var newDictionay = ["key" : "value","key1" : "value1" ,"key2" : "value3"]

newDictionay["key4"] = "value4"

newDictionay


//var mydictionay = [:]

var NewDictionay :[String :String!] = ["key" : "value"]

var dict = [String:String?] ()

dict["1"] = "one"

dict["2"] = "two"

println(dict)


var emptyDictt = [Int:String]()

// update the value and retun old value

let oldvalue = NewDictionay.updateValue("chutiya pa", forKey: "key")

oldvalue

newDictionay.removeValueForKey("key")

newDictionay.removeAtIndex(newDictionay.indexForKey("key1")!)



newDictionay = [:]


//var newdict = mydicitonary1 + newDictionay


for (key,value) in NewDictionay
{
    println("\(key) , \(value)")
}



let arrayformDic = [String](NewDictionay.keys)

// swift dictionary is unordered collection

class Animal
{
    var name = "Android"
//    var name :String{
//    get {
//        
//         return self.name
//    }
//    set(newname)
//        {
//           name = newname
//        }
//    }
    
    init()
    {
        
    }
    init (name :String)
    {
        self.name = name
    }
    
    
    func getName() -> String
    {
        return name
    }
    
    func setName(name:String)
    {
        self.name = name
    }
    
}

var animalDictnary = [Int:Animal]()

let newanimalDict = [1:Animal(name:"Linux"),2:Animal(name:"Horse")]

animalDictnary[1] = Animal()


newanimalDict[1]?.setName("Winow")






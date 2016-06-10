/// Classes Swift // 

// we are goining to talk about class initilizers

// There is not super class for swift class



//var sdd = newname.name

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
    
    static func yourname (name :String) -> String
    {
        return self.myname
    }
    
    // Want to override in sub class use class key word
    class func yourname1 (name :String) -> String
    {
        print(name)
        return name
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
    override static func yourname1 (name :String) -> String
    {
        print(name)
        return name
    }
    
}

class  MyClass :newClass
{
//    override static  var myname :String {
//        return  "sdzxcvzxfsd"
//    }
}

print(newClass.myname)
print(StaticINClass.myname)

print(newClass.yourname("hello"))
print(StaticINClass.yourname("what"))
//print(newClass().myname)



//SubScripts expression


//Classess ,Structure and enumeration can define subscripts ,which are  shortcuts  for accessing  the
//memeber elements of a collection list or  sequence

//sub script are not limited to single dimension 

// you can define subscript with mutiple  input parameter  to suite  you custom  types 

//subscript (index :Int) -> Int {
//
//    get {
//        // return a appropriate subscript value
//       
//        }
//   set (newValue)
//   {
//      // perform suitalbe  setting action here
//    }
//}

// read only subscript

//subscript (index :Int) -> Int {

//}


struct TimeTable
{
    var multiplier :Int
    subscript (index :Int) -> Int
        {
            
        return multiplier * index
    }
}


var timetable = TimeTable(multiplier: 4)

timetable[10]



// Subscript can take any number of input parameter and these input parameter can be of any type

//Subscripts can return any type

//Subscript can take variable parameter or vardiac parameter but not in-out parameter or provide default value to parameter 

//A class or structure can provide as many subscript implemetation it needs   and approprite subscripts will be used will be inferred based on type of value or values contained with subscript braces 

struct Matrix
{

    let rows :Int
    let columns :Int
    var grid :[Double]
    init(row:Int,column :Int)
    {
        self.rows = row
        self.columns = column
        grid = Array(count: row * column, repeatedValue: 0.0)
        
    }
    func indexisvalidforRow(row:Int,column:Int) ->Bool
    {
        return row >= 0 && row < rows && column >= 0 && column < columns
    }
    subscript (row :Int, column:Int) ->Double
        {
    
        get{
          
            assert(indexisvalidforRow(row, column: column), "index out of range")
          return grid[(row * columns) + column]
        }
        
        set {
        assert(indexisvalidforRow(row, column: column), "index out of range")
         grid[(row * columns) + column] = newValue
        }
    }
}


var matrix = Matrix(row: 2, column: 3)

matrix[1,2] = 20

print(matrix)

print(matrix[1,2])

protocol InitRequired
{
     init ()
}

class MYname :InitRequired {

    required init ()
    {
        
    }

}

class Name : MyClass {
   override init ()
    {
        
    }
}


class YourName
{
    init()
    {
    }
    
    init (name :String)
    {
    }
}

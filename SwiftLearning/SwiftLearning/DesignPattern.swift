//
//  Mediator.swift
//  SwiftLearning
//
//  Created by Durgesh Trivedi on 09/06/16.
//  Copyright © 2016 durgesh. All rights reserved.
//

import Foundation

//Behavioral
//In software engineering, behavioral design patterns are design patterns that identify common communication patterns between objects and realize these patterns. By doing so, these patterns increase flexibility in carrying out this communication.

//Mediator
//The mediator pattern is used to reduce coupling between classes that communicate with each other. Instead of classes communicating directly, and thus requiring knowledge of their implementation, the classes send messages via a mediator object.


protocol Mediator {
    func send(message :String,colleage:College)
}

class College

{
    let name :String
    let midiator:Mediator
    
    init(name:String,midiator :Mediator)
    {
        self.name = name
        self.midiator = midiator
    }
    
    func send(message :String)
    {
        midiator.send(message, colleage: self)
    }
    
    func receive(message: String) {
        assert(false, "Method should be overriden")
    }
    
}

class ConcreteColleague: College {
    override func receive(message: String) {
        print("Colleague \(name) received: \(message)")
    }
}

class MessageMediator
{
    private var colleage:[College] = []
    
    func addColleague(colleague: College) {
        colleage.append(colleague)
    }
    
    func send(message:String,college:College)
    {
        for c in colleage {
            if c !== college {
                c.receive(message)
            }
        }
    }
    
    
    
}

//Command Pattern

protocol DoorCommand{
    func execute() -> String
}

class OpenDoorCommand:DoorCommand{
    let doors:String
    required  init(doors:String){
    self.doors = doors
    }
    
    func execute() -> String {
        return "Opened \(doors)"
    }
    
}

class CloseDoorCommand:DoorCommand{
    let doors:String
    required init(doors :String){
        self.doors = doors
    }
    
    func execute() -> String {
        return "Closed \(doors)"
    }
}

class HAL9000DoorOperation{
    
    let opendDoor: OpenDoorCommand
    let closeDoor:CloseDoorCommand
    
    init(doors:String){
        self.opendDoor = OpenDoorCommand(doors:doors)
        self.closeDoor = CloseDoorCommand(doors:doors)
        
    }
    
    func close() -> String {
        return closeDoor.execute()
    }
    
    func open() -> String{
        return opendDoor.execute()
    }
}

let mydoorMan = {
let doorman = HAL9000DoorOperation(doors: "MyDoor")

doorman.open()
doorman.close()
}()

//chain of Resopnsibility
//The chain of responsibility pattern is used to process varied requests, each of which may be dealt with by a different handler.

class MoneyPile{
    var value:Int
    var quantity :Int
    var nextPile:MoneyPile?
    
    
    init(value: Int, quantity: Int, nextPile: MoneyPile?) {
        self.value = value
        self.quantity = quantity
        self.nextPile = nextPile
    }

    func canWithdraw(v: Int) -> Bool {
        
        var v = v
        
        func canTakeSomeBill(want: Int) -> Bool {
            return (want / self.value) > 0
        }
        
        var q = self.quantity
        
        while canTakeSomeBill(v) {
            
            if q == 0 {
                break
            }
            
            v -= self.value
            q -= 1
        }
        
        if v == 0 {
            return true
        } else if let next = self.nextPile {
            return next.canWithdraw(v)
        }
        
        return false
    }
    
}

class ATM{
    private var hundred:MoneyPile
    private var fifty:MoneyPile
    private var twenty:MoneyPile
    private var ten:MoneyPile
    
    private var startPile: MoneyPile {
        return self.hundred
    }
    
    init(hundred: MoneyPile,
         fifty: MoneyPile,
         twenty: MoneyPile,
         ten: MoneyPile) {
        
        self.hundred = hundred
        self.fifty = fifty
        self.twenty = twenty
        self.ten = ten
    }
    
    func canWithdraw(value: Int) -> String {
        return "Can withdraw: \(self.startPile.canWithdraw(value))"
    }
}

var getMoney = {

// Create piles of money and link them together 10 < 20 < 50 < 100.**
let ten = MoneyPile(value: 10, quantity: 6, nextPile: nil)
let twenty = MoneyPile(value: 20, quantity: 2, nextPile: ten)
let fifty = MoneyPile(value: 50, quantity: 2, nextPile: twenty)
let hundred = MoneyPile(value: 100, quantity: 1, nextPile: fifty)

// Build ATM.
var atm = ATM(hundred: hundred, fifty: fifty, twenty: twenty, ten: ten)
atm.canWithdraw(310) // Cannot because ATM has only 300
atm.canWithdraw(100) // Can withdraw - 1x100
atm.canWithdraw(165) // Cannot withdraw because ATM doesn't has bill with value of 5
atm.canWithdraw(30)  // Can withdraw - 1x20, 2x10

}()


//Creational Pattern
//Factory 
//In software engineering, creational design patterns are design patterns that deal with object creation mechanisms, trying to create objects in a manner suitable to the situation. The basic form of object creation could result in design problems or added complexity to the design. Creational design patterns solve this problem by somehow controlling this object creation.


//AbstractFactory
//The abstract factory pattern is used to provide a client with a set of related or dependant objects. The "family" of objects created by the factory are determined at run-time.

protocol Decimal{
    func stringValue() -> String
    static func make(string :String) -> Decimal
}

typealias Numberfactory = (String)-> Decimal

struct NextStepNumber : Decimal {
    private var nextStepNumber : NSNumber
    
    func stringValue() -> String { return nextStepNumber.stringValue }
    
    // factory
    static func make(string : String) -> Decimal {
        return NextStepNumber(nextStepNumber:NSNumber(longLong:(string as NSString).longLongValue))
    }
}

struct SwiftNumber : Decimal {
    private var swiftInt : Int
    
    func stringValue() -> String { return "\(swiftInt)" }
    
    // factory
    static func make(string : String) -> Decimal {
        return SwiftNumber(swiftInt:(string as NSString).integerValue)
    }
}


//Abstract Factory 

enum NumberType {
    case NextStep, Swift
}

enum NumberHelper {
    static func factoryFor(type : NumberType) -> Numberfactory {
        switch type {
        case .NextStep:
            return NextStepNumber.make
        case .Swift:
            return SwiftNumber.make
        }
    }
}

var absFactory = {

let factoryone = NumberHelper.factoryFor(.NextStep)

let numberOne = factoryone("1")
numberOne.stringValue()

let factoryTwo = NumberHelper.factoryFor(.Swift)
let numberTwo = factoryTwo("2")
numberTwo.stringValue()
}()


//Factory Method
//The factory pattern is used to replace class constructors, abstracting the process of object generation so that the type of the object instantiated can be determined at run-time.

protocol Currency{
    func symbol ()->String
    func code ()-> String
}


class EuroCurrency :Currency{
     func symbol() -> String {
        return "EURO"
    }
    
     func code() -> String {
        return "$$"
    }
 }

class USACurrency :Currency{
    func symbol() -> String {
        return "USA"
    }
    
    func code() -> String {
        return "$"
    }
}


enum Country{
   case Unitedstate,EURO,GREEK,Spain
}

enum CurrencyFactory{
    static func currecndyFactory(country:Country) ->Currency? {
    
        switch country{
        case .Spain,.GREEK :
              return EuroCurrency()
        case .Unitedstate :
            return USACurrency()
        default :
            return nil
        }
    
    }
}

let factory = {

let notCurrecyCode = "NO currecny code available"

CurrencyFactory.currecndyFactory(.GREEK)?.code() ?? notCurrecyCode

CurrencyFactory.currecndyFactory(.Unitedstate)?.code() ?? notCurrecyCode
    
}()

//Structural Design Pattern

//Bridge
//The bridge pattern is used to separate the abstract elements of a class from the implementation details, providing the means to replace the implementation details without modifying the abstraction.
protocol Appliance{
    func run()
}

protocol Switch{
    var appliance:Appliance {get set}
    
    func turnOn()
}

class RemotControl :Switch{
    var appliance :Appliance
    
    func turnOn(){
     self.appliance.run()
    }
    
    init (appliance :Appliance){
        self.appliance = appliance
    }
}


class TV :Appliance{
    func run() {
        print("TV is on ")
    }
}

class VaccumCliner:Appliance{
    func run(){
        print("Vaccum Cleaner is on ")
    }
}

var tvRemote = RemotControl(appliance: TV())

var fancyVaccumtclean = RemotControl(appliance: VaccumCliner())


//Composite
//The composite pattern is used to create hierarchical, recursive tree structures of related objects where any element of the structure may be accessed and utilised in a standard manner.
protocol Shape{
    func draw(fillingColor:String)
}

class Circle:Shape{
    func draw(fillingColor: String) {
        print("Draw Circle in \(fillingColor)")
    }
}

class Triangle:Shape{
    func draw(fillingColor: String) {
        print("Draw Triangle in \(fillingColor)")
    }
}

class WhiteBoard:Shape{
    lazy var shapes:[Shape] = [Shape]()
    
    init(_ shapes:Shape...) {
        self.shapes = shapes
    }

    func draw(fillColor:String) {
        for shape in self.shapes {
            shape.draw(fillColor)
        }
    }
    
}

var re = {
 var whiteBoard = WhiteBoard(Circle(),Triangle())
 whiteBoard.draw("Red")
}

//Decorator
// The decorator pattern is used to extend or alter the functionality of objects at run- time by wrapping them in an object of a decorator class. This provides a flexible alternative to using inheritance to modify behaviour.

protocol Coffee {
    func getCost() ->Double
    func getIngedients() -> String
    
}


class SimpleCoffee:Coffee{
    func getCost() -> Double {
        return 5.0
    }
    
    func getIngedients() -> String {
        return "Coffee"
    }
}

class CoffeeDecotator:Coffee{
    
    private let decorateCoffee:Coffee
    private let intgridentSeparator:String = ","
    func getCost() -> Double {
        return 10.0
    }
    
    required init(decorator:Coffee){
        self.decorateCoffee = decorator
    }
    
    func getIngedients() -> String {
        return  self.decorateCoffee.getIngedients()
    }
}

class Milk:CoffeeDecotator{
    required init(decorator: Coffee) {
        super.init(decorator: decorator)
    }
    
    override func getCost() -> Double {
        return super.getCost() + 0.5
    }
    
    override func getIngedients() -> String {
        return super.getIngedients() + intgridentSeparator + "Milk"
    }
}

class WhipCoffee: CoffeeDecotator {
    required init(decoratedCoffee: Coffee) {
        super.init(decorator: decoratedCoffee)
    }
    
    required init(decorator: Coffee) {
        fatalError("init(decorator:) has not been implemented")
    }
    
    override func getCost() -> Double {
        return super.getCost() + 0.7
    }
    
    override func getIngedients() -> String {
        return super.getIngedients() + intgridentSeparator + "Whip"
    }
}



var mycoffee = {
    var someCoffee :Coffee = SimpleCoffee()
    someCoffee = Milk(decorator: someCoffee)

    someCoffee = WhipCoffee(decoratedCoffee: someCoffee)
}

//Protection Proxy
//The proxy pattern is used to provide a surrogate or placeholder object, which references an underlying object. Protection proxy is restricting access.

protocol DoorOperator
{
    func opendDoor(doors:String) -> String
}

class HAL9000 :DoorOperator{

    func opendDoor(doors: String) -> String {
        return ("HAL9000: Affirmative, Dave. I read you. Opened \(doors).")
    }
}

class CurrentComputer :DoorOperator{
    private var computer: HAL9000!
    
    func authenticateThePassword(password:String) -> Bool{
        guard password == "pass" else{
            return false
        }
        
        computer = HAL9000()
        
        return true
    }
    
    func opendDoor(doors: String) -> String {
        
        guard  computer != nil else {
            return "Doors open denied"
        }
        return computer.opendDoor(doors)
    }
}

var doorOPen = {
    let computer = CurrentComputer()
    let doors = "Pod Bay Doors"
    
    computer.opendDoor(doors)
    
    computer.authenticateThePassword("pass")
    computer.opendDoor(doors)
}

//Virtual Proxy 
//The proxy pattern is used to provide a surrogate or placeholder object, which references an underlying object. Virtual proxy is used for loading object on demand.


protocol HEVSuitMedicalAid {
    func administerMorphine() -> String
}

class HEVSuit : HEVSuitMedicalAid {
    func administerMorphine() -> String {
        return "Morphine aministered."
    }
}

class HEVSuitHumanInterface : HEVSuitMedicalAid {
    lazy private var physicalSuit: HEVSuit = HEVSuit()
    
    func administerMorphine() -> String {
        return physicalSuit.administerMorphine()
    }
}

//Adaptor 
//The adapter pattern is used to provide a link between two otherwise incompatible types by wrapping the "adaptee" with a class that supports the interface required by the client.

protocol OlderDeathStarSuperLaserAiming {
    var angleV:NSNumber {get}
    var angleH:NSNumber {  get }
}

//Adaptee
struct DeathStarSuperlaserTarget{
    let angleHorizental :Double
    let angleVertical :Double
    init(angleHorizontal:Double, angleVertical:Double) {
        self.angleHorizental = angleHorizontal
        self.angleVertical = angleVertical
    }
}

//Adaptor

struct OldDeathStarSuperlaserTarget : OlderDeathStarSuperLaserAiming {
    private let target : DeathStarSuperlaserTarget
    
    var angleV:NSNumber {
        return NSNumber(double: target.angleVertical)
    }
    
    var angleH:NSNumber {
        return NSNumber(double: target.angleHorizental)
    }
    
    init(_ target:DeathStarSuperlaserTarget) {
        self.target = target
    }
}

var elements = {let target = DeathStarSuperlaserTarget(angleHorizontal: 14.0, angleVertical: 12.0)
let oldFormat = OldDeathStarSuperlaserTarget(target)

oldFormat.angleH
oldFormat.angleV
}


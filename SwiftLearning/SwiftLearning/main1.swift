//
//  main.swift
//  SwiftLearning
//
//  Created by Durgesh Trivedi on 20/01/15.
//  Copyright (c) 2015 durgesh. All rights reserved.
//

import Foundation

//print("Hello, World!")


class Food
{
    var name :String
    
    init (name :String)
    {
        self.name = name
        NSLog(" Super designated Food")
    }
    
    convenience init ()
    {
        NSLog(" Super Convienience Food")
        self.init (name :"[unnamed]")
        
    }
}

var food = Food(name :"This is my food ")

class RecieptIndegrante :Food
{
    var quantity:Int
    
    init (name:String ,quantity:Int)
    {
        NSLog(" Child RecieptIndegrante designated ")
        self.quantity = quantity
        super.init(name:name)
        
    }
    
    override convenience init (name :String)
    {
        NSLog("Child RecieptIndegrante Convienience")
        
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
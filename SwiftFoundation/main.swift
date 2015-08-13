//
//  main.swift
//  SwiftFoundation
//
//  Created by 张德荣 on 15/8/13.
//  Copyright (c) 2015年 张德荣. All rights reserved.
//

import Foundation

func sayHello(personName: String) ->String{
 let greeting = "Hello," + personName + "!"
    return greeting
}
print(sayHello("Anna"))
print(sayHello("Brina"))

func sayHelloWorld() ->String {
 return "hello, world"
}
print(sayHelloWorld())

func sayGoodbye(personName :String) {
  println("Goodbye, \(personName)")
}

sayGoodbye("Dave")

func printAndCount(stringToPrint : String) ->Int {
   println(stringToPrint)
   return count(stringToPrint)
}

func printWithoutCounting(stringToPrint: String) {
 printAndCount(stringToPrint)
}

printAndCount("hello, world")


var a = printAndCount("hello, world")

println(a)

func count(string : String) ->(vowels: Int,consonants: Int, others:Int){

   var vowels = 0,consonants = 0,others = 0
    for character in string {
        switch String(character).lowercaseString {
          case "a","e","i","o","u":
            ++vowels
        case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
        "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
            ++consonants
        default:
            ++others
        }
    }
    return(vowels,consonants,others)
}

let total = count("some arbitrary string!")

println("\(total.0) \(total.consonants) \(total.2)")



func someFunction(parameterName:Int) {
    
}


func join(s1: String, s2: String,joiner:String) ->String{
   return s1 + joiner + s2

}


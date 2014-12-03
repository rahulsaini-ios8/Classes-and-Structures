// Classes and structures
import UIKit

var str = "Hello, playground"


/*

Classes and structures are general-purpose, flexible constructs that become the building blocks of your program’s code. You define properties and methods to add functionality to your classes and structures by using exactly the same syntax as for constants, variables, and functions.

Unlike other programming languages, Swift does not require you to create separate interface and implementation files for custom classes and structures. In Swift, you define a class or a structure in a single file, and the external interface to that class or structure is automatically made available for other code to use.


Comparing Classes and Structures

Classes and structures in Swift have many things in common. Both can:

    - Define properties to store values
    - Define methods to provide functionality
    - Define subscripts to provide access to their values using subscript syntax
    - Define initializers to set up their initial state
    - Be extended to expand their functionality beyond a default implementation
    - Conform to protocols to provide standard functionality of a certain kind

For more information, see Properties, Methods, Subscripts, Initialization, Extensions, and Protocols.

Classes have additional capabilities that structures do not:

    - Inheritance enables one class to inherit the characteristics of another.
    - Type casting enables you to check and interpret the type of a class instance at runtime.
    - Deinitializers enable an instance of a class to free up any resources it has assigned.
    - Reference counting allows more than one reference to a class instance.

For more information, see Inheritance, Type Casting, Deinitialization, and Automatic Reference Counting.


*/



struct Resolution
{
    var width = 0
    var height = 0
}

class Video
{
    var resol = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name : String?
}

// Class and Structure Instances

let someResol = Resolution()
let someVideo = Video()


// Accessing Properties


println("The Width of SomeResolution is \(someResol.width)")

println("The Width of someVideo is \(someVideo.resol.width)")


// Memberwise Initializers for Structure Types


let vga = Resolution(width: 480, height: 320)


let hd = Resolution(width: 1200, height: 680)
var cinema = hd


cinema.width = 1400

println(" width \(cinema.width)")

println(" width \(hd.width)")

// The same behavior applies to enumerations:

enum Points
{
    case North, South, East, West
}


var currentDirection = Points.West
let rememberedDirection = currentDirection

currentDirection = .East

if rememberedDirection == .West
{
    println("West Direction")
}

/**

Pointers

If you have experience with C, C++, or Objective-C, you may know that these languages use pointers to refer to addresses in memory. A Swift constant or variable that refers to an instance of some reference type is similar to a pointer in C, but is not a direct pointer to an address in memory, and does not require you to write an asterisk (*) to indicate that you are creating a reference. Instead, these references are defined like any other constant or variable in Swift.



*/


/**

Assignment and Copy Behavior for Strings, Arrays, and Dictionaries

Swift’s String, Array, and Dictionary types are implemented as structures. This means that strings, arrays, and dictionaries are copied when they are assigned to a new constant or variable, or when they are passed to a function or method.

*/


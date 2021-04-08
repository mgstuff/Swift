import UIKit

var str = "Hello, playground"



func square(number: Int) {
    print(number * number)
}

square(number: 3)
square(number: 5)
square(number: 7)


// Arrays and functions
var strArray = ["hey","there","now"]

func strNow() {
    print("message")
}

func calculate(num: Int) {
    print(num * num)
}
calculate(num: 8)





func iTakeSTR(strArr: [String]) {
    for element in strArr {
        print(element)
    }
}
iTakeSTR(strArr: strArray)

var intArray = [12,3,4,5]

func iTakeArray(inArray: [Int]) {
    for element in inArray {
        print(element)
    }
}
iTakeArray(inArray: intArray)

// Swift let us skip using return keyword when we have only 1 expression in our function, it can’t contain any statements – no loops, no conditions, no new variables, and so on.
func mathNow() -> Int {
    5+5
}
mathNow()

func mathNow2() -> (Int) {
    5+5
}
mathNow2()

// Returning more than 1 parameter -> Tuples!
func getUser() -> (first: String, last: String) {
    (first: "Taylor", last: "Swift")
}

let user = getUser()
print(user.first)


func nazwaFunkcji() {
    print("wiadomosc")
}

//2.
func moreThanOne(first: Int, second: String) {
    print("Argument 1: \(first) oraz Argument 2: \(second)")
}
moreThanOne(first: 4, second: "argument")
// 3. Fun

func returnIt(first: Int) -> Int {
    return first + 3
}
returnIt(first: 5)

// -------------------------------------------- CLOSURES --------------------------------------------

// Day 6 CLOSURE
let driving = {
    print("Im gonna drive my car")
}
driving()

let firstDrive = { (place: String) in
    print("Let go to the \(place)")
}
firstDrive("Poland")

let anotherRoad = { (km: Int, how: String) in
    print("\(km) and \(how)")
}
anotherRoad(5, "now")

// Example of same function and closure
func pay(user: String, amount: Int) {
    // code
}
let payment = { (user: String, amount: Int) in
    // code
}
// in keyword is used to mark end of parameter list and start body of closure

// RETURN FROM CLOSURE
// After parameters list
// in is used to mark end of parameter list and return type to start body of closure
let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

// CLOSURE WITH NO PARAMETERS JUST RETURN TYPE
let paymentNow = { () -> Bool in
    print("Paying an anonymous person…")
    return true
}

// CLOSURE AS PARAMETER
let driveNow = {
    print("gogog")
}

func travel(action: () -> Void) {
    print("Im getting ready")
    action()
    print("nice")
}
travel(action: driveNow)


// CLOSURE EXAMPLE WITH PASSING CLOSURE AS ARGUMENT TO FUNCTION
let resignation = { (name: String) in
    print("Dear \(name), I'm outta here!")
}

func printDocument(contents: (_ name: String) -> Void) {
    print("Connecting to printer...")
    print("Sending document...")
    contents("hey")
}
printDocument(contents: resignation)

// -------------------------------------------- CLOSURES WITH ARGUMENTS PASSED AS ARGUMENT --------------------------------------------
print("[150] -------------------------------------------- CLOSURES WITH ARGUMENTS PASSED AS ARGUMENT --------------------------------------------")
func closureWithArguments(yourName: String, action: (String) -> Void) {
    print(yourName)
    action(yourName)
}
// Calling closure definied above
closureWithArguments(yourName: "hello", action: resignation)

func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London") // calling closure
    print("I arrived!")
}
print("[163] -------------------------------------------- calling function using trailing closure syntax --------------------------------------------")
travel { (place: String) in
    print("Best place is \(place)")
}

print("[168] -------------------------------------------- CLOSURES WITH ARGUMENTS PASSED AS ARGUMENT AND WITH RETURN TYPE --------------------------------------------")
func travelIt(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}
travelIt { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

let numbers = [10, 20, 30]

func reduce(_ values: [Int], using closure: (Int, Int) -> Int) -> Int {
    // start with a total equal to the first value
    var current = values[0]

    // loop over all the values in the array, counting from index 1 onwards
    for value in values[1...] {
        // call our closure with the current value and the array element, assigning its result to our current value
        current = closure(current, value)
    }

    // send back the final current value
    return current
}

let sum = reduce(numbers) { (runningTotal: Int, next: Int) in
    runningTotal + next
}
print(sum)

print("[200] Usage of _ means we don't need to call parameter name later when calling the function, just parameter itself")
func playSong(_ name: String, notes: () -> String) {
    print("I'm going to play \(name).")
    let playedNotes = notes()
    print(playedNotes)
}

playSong("Mary Had a Little Lamb") {
    // return is passed directly as closure return
    return "EDCDEEEDDDEGG"
}

func activateAI(_ ai: () -> String) {
    print("Let's see what this thing can do...")
    let result = ai()
    print(result)
}
activateAI {
    return "Come with me if you want to live."
}

print("[221] Passing of INT to Closure and return INT from Closure")
func manipulate(numbers: [Int], using algorithm: (Int) -> Int) {
    for number in numbers {
        let result = algorithm(number)
        print("Manipulating \(number) produced \(result)")
    }
}
print("[228] ATTENTION on passing argument into closure number in")
manipulate(numbers: [1, 2, 3]) { number in
    return number * number
}

func scoreToGrade(score: Int, gradeMapping: (Int) -> String) {
    print("Your score was \(score)%.")
    let result = gradeMapping(score)
    print("That's a \(result).")
}
scoreToGrade(score: 80) { (grade: Int) in
    if grade < 85 {
        return "Fail"
    }
    return "ok"
}

print("[245] Closures with Multiple Parameters")
func traveling(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}
// Normal printing without trailing closure
traveling { (place: String, age: Int) in
    return "\(place)" + "\(age)"
}
// Priting without pointing variables names
traveling { (place, age) in
    return "\(place)" + "\(age)"
}
// Printing using full trailing closures
traveling {
    return "\($0)" + "\($1)"
}




// -------------------------------------------- TRAILING CLOSURES --------------------------------------------
print("// -------------------------------------------- TRAILING CLOSURES --------------------------------------------")
func holdClass(name: String, lesson: () -> Void) {
    print("Welcome to \(name)!")
    lesson()
    print("Make sure your homework is done by next week.")
}
// Long form, without trailing closures
holdClass(name: "Philosophy 101", lesson: {
    print("All we are is dust in the wind, dude.")
})
// Short form with trailing closures - as closure is declared as last parameter in function we drop parameter name
holdClass(name: "Philosophy 101") {
    print("All we are is dust in the wind, dude.")
}

// -------------------------------------------- STRUCTURES --------------------------------------------
print("[285] -------------------------------------------- STRUCTURES --------------------------------------------")

print("[xxx] Creating Struct")

struct Sport {
    var name: String
}
var tennis = Sport(name: "tennis")
print(tennis.name)

struct Order {
    var customerID: Int
    var itemID: Int
}

var newOrder = Order(customerID: 4, itemID: 6)



print("[304] -------------------------------------------- COMPUTED PROPERTIES --------------------------------------------")
print("[305] Computed property – a property that runs code to figure out its value.")
// Computed properties must always have an explicit type.
// Constants cannot be computed properties.
struct SportComputed {
    var name: String
    var isOlympicSport: Bool

    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}
let chessBoxing = SportComputed(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)
// whether your property’s value relies on the values of your other properties –
// then the tables are turned: this is a place where computed properties are useful,

print("[325] Methods are functions inside structures")
struct CityCool {
    var population: Int

    func collectTaxes() -> Int {
        return population * 1000
    }
}
let london = CityCool(population: 9000000)
print(london.collectTaxes())

print("[336] When you want to change a property inside a method, you need to mark it using the mutating keyword")
struct PersonMutated {
    var name: String

    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}
var person = PersonMutated(name: "Ed")
print(person.name)
person.makeAnonymous()
print(person.name)



print("[351] Initializers inside structures")
struct initUser {
    var username: String
    var age: Int = 5

    // We need to put all variables and initialize it in init() function, but we can also assign value directly and it will behave as INITI
    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}
// With usage if init we don't need to create structure and assign value to parameter

var initializerUser = initUser()
print(initializerUser.username)
initializerUser.username = "Andrew"
print(initializerUser.username)

// Property is variable declared inside Structure
print("[370] .self in Structures")
//Inside methods you get a special constant called self, which points to whatever instance of the struct is currently being used. This self value is particularly useful when you create initializers that have the same parameter names as your property.

//For example, if you create a Person struct with a name property, then tried to write an initializer that accepted a name parameter, self helps you distinguish between the property and the parameter – self.name refers to the property, whereas name refers to the parameter.
print("Using self inside init() is like declaring new property(property is a variable created inside struct) but inside init() function")
print("Outside of initializers, the main reason for using self is because we’re in a closure and Swift requires us to so we’re making it clear we understand what’s happening. ")
struct Person {
    var name: String

    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}


print("[386] Lazy Var")

struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

print("[393] Lazy Var will be only used when specificly accessed, until it won't be shown")
struct lazyPerson {
    var name: String
    
    lazy var familyTree = FamilyTree()

    init(name: String) {
        self.name = name
    }
}

var ed = lazyPerson(name: "Ed")
ed.familyTree

print("[408] Static - One common use for static properties and methods is to store common functionality you use across an entire app. ")
struct staticStudent {
    static var classSize = 0
    var name: String

    init(name: String) {
        self.name = name
        staticStudent.classSize += 1
    }
}
print(staticStudent.classSize)


print("[421] Access control lets you restrict which code can use properties and methods. This is important because you might want to stop people reading a property directly, for example.")

print("\n[423] -------------------------------------------- CLASSES --------------------------------------------")
print("[424] I’ve already said that SwiftUI uses structs extensively for its UI design. Well, it uses classes extensively for its data: when you show data from some object on the screen, or when you pass data between your layouts, you’ll usually be using classes.")
print("[425] Class")
print("Class Vs Structs")
print("1. We always have to initialize class")
print("2. In SwiftUI class is used for data and Struct for View")
class Dog {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

print("3. Inheritance")
class Poodle: Dog {
    init(name: String) {
            super.init(name: name, breed: "Poodle") // super.init is used for safety to point at shild
        }
}

var newDog = Dog(name: "Small Dog", breed: "brred")
print(newDog.name)

print("4. Copying Objects Class vs Struct")
print(" When you copy a struct, both the original and the copy are different things – changing one won’t change the other. When you copy a class, both the original and the copy point to the same thing, so changing one does change the other.")
class Singer {
    var name = "Taylor Swift"
}
// Create Object
var singer = Singer()
print(singer.name)
// Creat second Object based on first object
var singerCopy = singer
// Assign value to name parameter for first object
singerCopy.name = "Justin Bieber"
// Both objects showing same value as Classes point to same place in memory which is different for Structs
print(singer.name)
print(singerCopy.name)

print("4. Deinitializzers")
// Should be used at the end of the classes
print("5. Mutability")
// However, if you have a constant class with a variable property, that property can be changed. Because of this, classes don’t need the mutating keyword with methods that change properties; that’s only needed with structs.

print("\n[470] -------------------------------------------- PROTOCOLS --------------------------------------------")
print("Protocols are set of methods/properties to which Class can conform and use it's methods")
protocol Identifiable {
    var id: String { get set }
}

// Then we can create structure which conform to particular protocole
print("Protocols says a struct, class or enum that if you want to be THAT, do THIS THIS AND THIS")
struct User: Identifiable {
    var id: String
}

func displayID(thing: Identifiable) {
    print("My id is \(thing.id)")
}

var newUser = User(id: "newUser")
displayID(thing: newUser)

// Book Example

protocol Purchaseable {
    var name: String { get set }
}

struct Book: Purchaseable {
    var name: String
    var author: String
}

struct Movie: Purchaseable {
    var name: String
    var actors: [String]
}

struct Car: Purchaseable {
    var name: String
    var manufacturer: String
}

struct Coffee: Purchaseable {
    var name: String
    var strength: Int
}

func buy(_ item: Purchaseable) {
    print("I'm buying \(item.name)")
}



print("n\n[521] Getter and Setter")
print("[522] It's not possible to create set only property in Swift, BUT WE CAN CREATE GET ONLY PROPERTY")
class Temperature {
    var celsius: Float = 5.0
    var fahrenheit: Float {
        get { // This getting value up to fahrenheit property
            return celsius * 2
        }
        set(tempFromGet) { // set is only called when we modify fahrenheit value and its called first
            celsius = tempFromGet - 3
            print("Temp from get \(tempFromGet)")
        }
    }
}
print("Protocols describe what methods and properties a conforming type must have, but don’t provide the implementations of those methods.")

let temp = Temperature()
print(temp.fahrenheit)
print(temp.celsius)
temp.fahrenheit = 100
print("temp.fahrenheit changed to 100")
print(temp.fahrenheit)
print(temp.celsius)





print("n\n[549] Extensions")

extension Collection {
    func summarize() {
        print("There are \(count) of us:")

        for name in self {
            print(name)
        }
    }
}
// Arrays are part of Collections type
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])
pythons.summarize()
beatles.summarize()

print("\n\n[566] Protocol-Oriented programming")
protocol newIdentifiable {
    var id: String { get set }
    func identify()
}

extension newIdentifiable {
    func identify() {
        print("My ID is \(id).")
    }
}

struct superUser: newIdentifiable {
    var id: String
}

let twostraws = superUser(id: "twostraws")
twostraws.identify()

print("\n[485] -------------------------------------------- OPTIONALS --------------------------------------------")
print("[586] Optionals Unwrapping")

var nameOfYou: String? = "YO"
print("A common way of unwrapping optionals is with if let syntax, which unwraps with a condition. If there was a value inside the optional then you can use it, but if there wasn’t the condition fails.")
//If name holds a string, it will be put inside unwrapped as a regular String and we can read its count property inside the condition. Alternatively, if name is empty, the else code will be run.
if let unwrapped = nameOfYou {
    print("\(unwrapped.count) letters")
} else {
    print("Missing name.")
}

// This wont work as we cannot assign nil to non-optional integer var score: Int = nil
print("This unwrapping wont work too \n")
/*
var bestScore: Int? = nil
bestScore = 101
if bestScore > 100 { // no unwrapping done
    print("You got a high score!")
} else {
    print("Better luck next time.")
}
*/
print("\n[608] Guard Let")
print("guard must be followed by else.")
print("guard let unwrapped_var = unwrapping_var_name else")
// Replacement for if let is guard let
func greetMe(name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        return
    }

    print("Hello, \(unwrapped)!")
}
greetMe(name: nil)

// Guard let is used for print Happy Path
func double(number: Int?) -> Int? {
    // number will be assigned as provided value number has value
    guard let number = number else {
        return nil
    }
    return number * 2
}
let input = 5
if let doubled = double(number: input) {
    print("\(input) doubled is \(doubled).")
}

print("[635] nil coalescing are two ?? to provide default value")
func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}
// If we call that with ID 15 we’ll get back nil because the user isn’t recognized, but with nil coalescing we can provide a default value of “Anonymous” like this:
let userNil = username(for: 15) ?? "Anonymous"


print("[647] Typecasting")
print("We use as? to perform typecasting")
/*
 for pet in pets {
     if let dog = pet as? Dog {
         dog.makeNoise()
     }
 }
 */

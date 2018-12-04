import UIKit

let languageName = "Swift"
var version: Float = 4.2
let introduced = 2014
let isAwesome = true

let aChar: Character = "S"

let s: Int = 0


//let isFather: Bool
//if true {
//    isFather = true
//} else {
//    isFather = false
//}

struct Dog {
    var age: Int
    let name: String
}

var medor = Dog(age: 2, name: "Médor")

//Problème de type
//version = "4.2"

//: # Strings

let helloString = "Hello"
//Création d’une chaine de caractère

var worldString = "World"

let complete = helloString + " " + worldString
print(complete)

print("Le langage \(languageName) est dans sa version \(version) et il date de \(introduced)")

worldString.append(aChar)

if worldString.isEmpty {
    print("No string")
}

if complete.hasSuffix("World") {
    print("Fini par World")
}

let aString = "☎️📟🔪鼠标"

//: # Collections

var villes = ["Paris","Bordeaux","Lyon","Marseille"]
// tableau de String

var nbHabitants = ["Paris" : 2_250_000, "Bordeaux" : 239_000, "Lyon" : 491_268.0, "Marseille" : 850_636]
// dictionnaire avec String en clé, Int en valeur

villes.append("Saint-Denis")
villes[3]
villes.contains("Lyon")
villes.count

nbHabitants["Paris"]

nbHabitants["La Réunion"] = 800_000
var previousValue = nbHabitants.updateValue(800_001, forKey: "La Réunion")
previousValue

previousValue = nbHabitants.updateValue(800_002, forKey: "Nantes")
previousValue


var emptyArray: [Int] = []
var emptyArray2 = [Int]()
var emptyArray3: Array<Int> = []

var emptyDict: [String:Int] = [:]
var emptyDict2 = [String:Int]()
var emptyDict3: Dictionary<String,Int> = [:]

//: # Classes et Structures

struct Floor {

    var level: Int
    var numberOfRooms: Int
    var companyName: String
}

class Building {

    var address: String = ""
    var floors: [Floor] = []
    var isOpenToPublic = false
}

let floor1 = Floor(level: 0, numberOfRooms: 5, companyName: "Apple")
var floor2 = Floor(level: 1, numberOfRooms: 10, companyName: "Apple")
var floor3 = floor2
floor3.level = 2

let appleFrance = Building()
appleFrance.floors = [floor1, floor2]
appleFrance.address = "16 place d'Iéna"


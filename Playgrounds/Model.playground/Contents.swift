import UIKit

struct Member {

    let firstName: String
    let lastName: String
    let birthDate: Date
    var avatarUrl: URL

    var function: String
    var groups: [Group]
    var cotisations: [Cotisation]
    var phoneNumber: String
    var mail: String
}


class Association {

    // Properties
    let name: String
    let legalID: String
    let address: String
    var members: [Member]
    var groups: [Group]
    var locations: [Location]

    let defaultCotisationDuration: TimeInterval
    let defaultCotisationAmount: Float

    // Init
    init(name: String, legalID: String, address: String, cotisationCost: Float, cotisationDuration: TimeInterval) {

        self.name = name
        self.legalID = legalID
        self.address = address
        self.defaultCotisationAmount = cotisationCost
        self.defaultCotisationDuration = cotisationDuration

        members = []
        groups = []
        locations = []
    }

    // Functions
    func addMember(_ member: Member) {

        members.append(member)
    }

    func removeMember(_ member: Member) {

    }

    func listMembers() -> [Member] {

        return members
    }

//    func purgeMembers() -> [Member] {
//
//    }
}

enum Right: Int {
    case guest
    case member
    case admin
}

class Group {

    let name: String
    var members: [Member]
    var right: Right

    init(name: String, rights: Right) {
        self.name = name
        self.right = rights

        members = []
    }

    func addMember(_ member: Member) {

    }

    func removeMember(_ member: Member) {

    }

    func listMembers() {

    }
}

struct Location: Equatable {
    let name: String
    let latitude: Double
    let longitude: Double
    let address: String
}

struct Cotisation {
    let date: Date
    let cost: Float
    let validity: TimeInterval

    var isValid: Bool
}


let asso = Association(name: "Toto", legalID: "521410290", address: "12 Rue duprés", cotisationCost: 1000, cotisationDuration: 3600)
let url = URL(string: "http://zhekfhekrjfhkerhgk")!
let me = Member(firstName: "Ludovic", lastName: "Ollagnier", birthDate: Date(), avatarUrl: url, function: "iOS Dev", groups: [], cotisations: [], phoneNumber: "", mail: "")
asso.addMember(me)

guard me.lastName == "Ollagnier" else {
    print("Not me")
    fatalError()
}

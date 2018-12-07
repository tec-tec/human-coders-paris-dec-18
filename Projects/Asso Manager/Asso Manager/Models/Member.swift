//
//  Member.swift
//  Asso Manager
//
//  Created by Ludovic Ollagnier on 05/12/2018.
//  Copyright © 2018 Human Coders. All rights reserved.
//

import Foundation

struct Member: Codable {

    let gender: Gender
    let firstName: String
    let lastName: String
    let birthDate: Date
    var avatarUrl: URL?

    var fullName: String {
        return firstName + " " + lastName
    }

    var function: String
    var groups: [Group]
    var cotisations: [Cotisation]
    var phoneNumber: String
    var mail: String?

    init(fName: String, lName: String, gender: Gender, birthDate: Date, avatarURL: URL?, function: String, groups: [Group], cotisation: [Cotisation], phoneNumber: String, mail: String?) {

        firstName = fName
        lastName = lName
        self.gender = gender
        self.birthDate = birthDate
        self.avatarUrl = avatarURL
        self.function = function
        self.groups = groups
        self.cotisations = cotisation
        self.phoneNumber = phoneNumber
        self.mail = mail
    }
}

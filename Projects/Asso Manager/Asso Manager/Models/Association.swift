//
//  Association.swift
//  Asso Manager
//
//  Created by Ludovic Ollagnier on 05/12/2018.
//  Copyright © 2018 Human Coders. All rights reserved.
//

import Foundation

class Association: Codable {

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


    // We should think about factorising
    func archiveJSON() -> Data? {

        let encoder = JSONEncoder()
        let data = try? encoder.encode(self)

        return data
    }

    func archivePlist() -> Data? {

        let encoder = PropertyListEncoder()
        let data = try? encoder.encode(self)

        return data
    }

    static func savedAsso(from data: Data) -> Association? {

        let decoder = JSONDecoder()
        let asso = try? decoder.decode(Association.self, from: data)

        return asso
    }
}

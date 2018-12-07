//
//  Group.swift
//  Asso Manager
//
//  Created by Ludovic Ollagnier on 05/12/2018.
//  Copyright © 2018 Human Coders. All rights reserved.
//

import Foundation

class Group: Codable {

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

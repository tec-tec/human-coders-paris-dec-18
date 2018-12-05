//
//  Cotisation.swift
//  Asso Manager
//
//  Created by Ludovic Ollagnier on 05/12/2018.
//  Copyright © 2018 Human Coders. All rights reserved.
//

import Foundation

struct Cotisation {
    let date: Date
    let cost: Float
    let validity: TimeInterval

    var isValid: Bool
}

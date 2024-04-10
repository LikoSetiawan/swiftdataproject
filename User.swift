//
//  User.swift
//  SwiftDataProject
//
//  Created by Liko Setiawan on 10/04/24.
//

import Foundation
import SwiftData


@Model
class User{
    var name: String
    var city: String
    var joinDate: Date
    
    init(name: String, city: String, joinDate: Date) {
        self.name = name
        self.city = city
        self.joinDate = joinDate
    }
}

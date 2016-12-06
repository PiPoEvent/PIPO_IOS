//
//  User.swift
//  PIPO
//
//  Created by Thang Cao Hoang on 05/12/2016.
//  Copyright © 2016 Thang Cao Hoang. All rights reserved.
//

import Foundation

enum UserFields: String {
    case id = "id"
    case firstname  = "firstname"
    case lastname = "lastname"
    case username = "username"
    case createdAt = "createdAt"
    case phoneNumber = "phoneNumber"
    case profileImage = "profileImage"
}

struct User {
    var id: String?
    var firstname: String?
    var lastname: String?
    var username: String?
    var createdAt: String?
    var phoneNumber: String?
    var profileImage: ImageResource?
    
    init?(json: [String: AnyObject]) throws {
        
        // Requirement fields
        guard let id = json[UserFields.id.rawValue],
                let firstname = json[UserFields.firstname.rawValue],
                let lastname = json[UserFields.lastname.rawValue],
                let username = json[UserFields.username.rawValue] else {
            throw UserError.missFields
        }
        self.id = id as? String
        self.firstname = firstname as? String
        self.lastname = lastname as? String
        self.username = username as? String
        
        // Optional fields 
        phoneNumber = json[UserFields.phoneNumber.rawValue] as? String ?? ""
    }
}

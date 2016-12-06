//
//  Category.swift
//  PIPO
//
//  Created by Thang Cao Hoang on 05/12/2016.
//  Copyright © 2016 Thang Cao Hoang. All rights reserved.
//

import Foundation

enum CategoryFields: String {
    case id = "id"
    case name = "name"
    case child = "child"
}

struct Category {
    var id: String?
    var name: String?
    var child = [String]()
    init?(json: [String: AnyObject]){
        
        guard let id = json[CategoryFields.id.rawValue],
            let name = json[CategoryFields.name.rawValue] else {
                return
        }
        
        // Add to properties
        self.id = id as? String
        self.name = name as? String
        if let child = json[CategoryFields.child.rawValue] as? [String:AnyObject]{
            
        }
    }
}

//{
//    "id": "",
//    "name": "",
//    "child": [] // Array String
//}

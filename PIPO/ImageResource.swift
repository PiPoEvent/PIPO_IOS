//
//  ImageResource.swift
//  PIPO
//
//  Created by Thang Cao Hoang on 05/12/2016.
//  Copyright © 2016 Thang Cao Hoang. All rights reserved.
//

import Foundation

enum ImageFields : String {
    case imageUrl = "imageUrl"
}

struct ImageResource {
    var imageUrl: String?
    init? (json: [String: AnyObject]) {
        
        guard let imageUrl = json[ImageFields.imageUrl.rawValue]  else {
            return
        }
        
        // Add fields
        self.imageUrl = imageUrl as? String
    }
}

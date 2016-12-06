//
//  APICommunicator.swift
//  PIPO
//
//  Created by Thang Cao Hoang on 05/12/2016.
//  Copyright © 2016 Thang Cao Hoang. All rights reserved.
//

import Foundation
import Alamofire

struct APIScheme {
    static let baseUrl = ""
    static let login = ""
    static let register = ""
    static let searchEvent = ""
    static let getImage = ""
    static let uploadImage = ""
}

class APICommunicator: APICommunicatorProtocol {
    
    static let sharedInstance = APICommunicator()
    
    func getDataFromAPI(apiUrl url: String, success: () -> ()) {
        // TODO: Handle data
    }
    
    func postDataToAPI(apiUrl url: String, json: [String : AnyObject], success: (AnyObject) -> (), error: (NSError) -> ()) {
        // TODO: Handle data
    }
}

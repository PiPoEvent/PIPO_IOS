//
//  APICommunicatorProtocol.swift
//  PIPO
//
//  Created by Thang Cao Hoang on 05/12/2016.
//  Copyright © 2016 Thang Cao Hoang. All rights reserved.
//

import Foundation

protocol APICommunicatorProtocol {
    func postDataToAPI(apiUrl url: String,json: [String:AnyObject], success: (AnyObject) -> (), error: (NSError) -> ())
    func getDataFromAPI(apiUrl url: String, success: () ->())
}

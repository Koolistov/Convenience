//
//  NSURL+Convenience.swift
//  Convenience
//
//  Created by Johan Kool on 10/12/14.
//  Copyright (c) 2014 Koolistov Pte. Ltd. All rights reserved.
//

import Foundation
import UIKit

extension NSURL {

    /**
        Returns query parameters as a dictionary
    */
    func queryParameters() -> [String:AnyObject] {
        var info: [String:AnyObject] = [:]
        if let queryString = self.query {
            for parameter in queryString.componentsSeparatedByString("&") {
                let parts = parameter.componentsSeparatedByString("=")
                if parts.count > 1 {
                    let key = (parts[0] as String).stringByReplacingPercentEscapesUsingEncoding(NSUTF8StringEncoding)
                    let value = (parts[1] as String).stringByReplacingPercentEscapesUsingEncoding(NSUTF8StringEncoding)
                    if key != nil && value != nil {
                        info[key!] = value
                    }
                }
            }
        }
        return info
    }
    
}
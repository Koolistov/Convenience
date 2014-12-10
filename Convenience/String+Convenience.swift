//
//  String+Convenience.swift
//  Convenience
//
//  Created by Johan Kool on 2/12/14.
//  Copyright (c) 2014 Koolistov Pte. Ltd. All rights reserved.
//

/**
    Repeat a string

    Note: To be able to use this, you need to copy the first line
    with the 'infix operator' into your module.
*/
infix operator * { associativity left precedence 145 }
public func * (left: String, right: Int) -> String {
    if right <= 0 {
        return ""
    }

    var result = left
    for _ in 1..<right {
        result += left
    }

    return result
}
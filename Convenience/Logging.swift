//
//  Logging.swift
//  Convenience
//
//  Created by Johan Kool on 2/12/14.
//  Copyright (c) 2014 Koolistov Pte. Ltd. All rights reserved.
//

import Foundation

/**
    Log debug info

    Set OTHER_SWIFT_FLAGS = -DDEBUG in your Xcode project target.
*/
public func debugLog(body: Any! = nil, filename: String = __FILE__, functionName: String = __FUNCTION__, line: Int = __LINE__) {
    #if DEBUG
        NSLog("\(NSURL(fileURLWithPath: filename).lastPathComponent):\(line) \(functionName) \(body)")
    #endif
}

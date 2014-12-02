//
//  Delay.swift
//  Convenience
//
//  Created by Johan Kool on 2/12/14.
//  Copyright (c) 2014 Koolistov Pte. Ltd. All rights reserved.
//

import Foundation

/**
    Run a block after a delay on the main thread

    :param: delay     Delay in seconds
    :param: closure   Block to run on the main thread
*/
func delay(delay: NSTimeInterval, closure:()->()) {
    dispatch_after(
        dispatch_time(
            DISPATCH_TIME_NOW,
            Int64(delay * Double(NSEC_PER_SEC))
        ),
        dispatch_get_main_queue(), closure)
}

//
//  Array+Convenience.swift
//  Convenience
//
//  Created by Johan Kool on 2/12/14.
//  Copyright (c) 2014 Koolistov Pte. Ltd. All rights reserved.
//

extension Array {

    /**
        Removes a given object from an array

        :param: object  Object to remove
    */
    mutating func removeObject<U: Equatable>(object: U) {
        var index: Int?
        do {
            index = nil
            for (idx, objectToCompare) in enumerate(self) {
                if let to = objectToCompare as? U {
                    if object == to {
                        index = idx
                        break
                    }
                }
            }

            if (index != nil) {
                self.removeAtIndex(index!)
            }
        } while (index != nil)
    }

    func firstIndexForObject<U: Equatable>(object: U) -> Int? {
        for (idx, objectToCompare) in enumerate(self) {
            if let to = objectToCompare as? U {
                if object == to {
                    return idx
                }
            }
        }
        return nil
    }

}

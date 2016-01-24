//
//  Array+Extension.swift
//  Array+Extension
//
//  Created by Nikos Maounis on 24/1/16.
//  Copyright © 2016 Nikos Maounis. All rights reserved.
//

import Foundation

extension Array where Element: Equatable {
    mutating func removeObject(object: Element) {
        guard let index = self.indexOf(object) else { return }
        self.removeAtIndex(index)
    }
    
    mutating func removeObjects(array: [Element]) {
        for object in array {
            self.removeObject(object)
        }
    }
    
    mutating func shuffle() {
        for i in 0..<(count - 1) {
            let j = Int(arc4random_uniform(UInt32(count - i))) + i
            swap(&self[i], &self[j])
        }
    }
    
    func shuffled() -> [Element] {
        var list = self
        for i in 0..<(list.count - 1) {
            let j = Int(arc4random_uniform(UInt32(list.count - i))) + i
            swap(&list[i], &list[j])
        }
        return list
    }
    
    
    func sample() -> Element {
        let randomIndex = Int(rand()) % count
        return self[randomIndex]
    }
}

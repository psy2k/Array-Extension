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
        if count < 2 { return }
        for index in 0..<count - 1 {
            let newIndex = Int(arc4random_uniform(UInt32(count - index))) + index
            guard index != newIndex else { continue }
            swap(&self[index], &self[newIndex])
        }
    }
    
    func shuffled() -> [Element] {
        var list = self
        for index in 0..<list.count {
            let newIndex = Int(arc4random_uniform(UInt32(list.count-index))) + index
            if index != newIndex {
                swap(&list[index], &list[newIndex])
            }
        }
        return list
    }
    
    
    func sample() -> Element {
        let randomIndex = Int(rand()) % count
        return self[randomIndex]
    }
}

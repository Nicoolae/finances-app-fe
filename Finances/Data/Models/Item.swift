//
//  Item.swift
//  Finances
//
//  Created by Nicolae on 18/10/25.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}

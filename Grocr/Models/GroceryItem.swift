//
//  GroceryItem.swift
//  Grocr
//
//  Created by Chen Hsin on 2018/6/5.
//  Copyright © 2018年 Chen Hsin. All rights reserved.
//

import Foundation
import Firebase


struct GroceryItem {
    let ref: DatabaseReference?
    let key: String
    let name: String
    let addedByUser: Bool
    
    init(ref: DatabaseReference, key: String, name: String, addedByUser: Bool ) {
        self.ref = nil //why
        self.key = key
        self.name = name
        self.addedByUser = addedByUser
        
    }
    
}




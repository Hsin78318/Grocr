//
//  User.swift
//  Grocr
//
//  Created by Chen Hsin on 2018/6/5.
//  Copyright © 2018年 Chen Hsin. All rights reserved.
//

import Foundation

struct User {
    let uid: String
    let email: String
    
    init(uid: String, email: String) {
        self.uid = uid
        self.email = email
    }
}

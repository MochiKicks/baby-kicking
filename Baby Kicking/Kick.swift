//
//  Kick.swift
//  Baby Kicking
//
//  Created by Vinh Nguyen on 12/13/15.
//  Copyright © 2015 Axcoto. All rights reserved.
//

import Foundation
import RealmSwift

class Kick: Object {
    dynamic var createdAt: NSDate? = nil
    dynamic var count = 1
    
    func save() {
        print(createdAt)
        let realm = try! Realm()
        try! realm.write {
            realm.add(self)
            print(self)
        }
    }
}
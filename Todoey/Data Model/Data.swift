//
//  Data.swift
//  Todoey
//
//  Created by SeongMinK on 2022/04/06.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import Foundation
import RealmSwift

class Data: Object {
    @objc dynamic var name: String = ""
    @objc dynamic var age: Int = 0
}

//
//  Category.swift
//  Todoey
//
//  Created by SeongMinK on 2022/04/07.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name: String = ""
    let items = List<Item>()
    let array = [1, 2, 3]
}
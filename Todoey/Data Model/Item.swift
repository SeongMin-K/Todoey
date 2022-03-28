//
//  Item.swift
//  Todoey
//
//  Created by SeongMinK on 2022/03/27.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import Foundation

class Item: Encodable {
    var title: String = ""
    var done: Bool = false
}

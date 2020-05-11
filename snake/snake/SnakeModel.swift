//
//  SnakeModel.swift
//  snake
//
//  Created by  Igor Nadiein on 11.05.2020.
//  Copyright © 2020  Igor Nadiein. All rights reserved.
//

import Foundation

class SnakeModel {
    public var head:Coordinates?
    public var body:[SnakeModel] = []
    public var length:Int = 1
    public var direction:Direction?
}

class Coordinates {
    public var x:Int = 0
    public var y:Int = 0
}

enum Direction {
    case UP
    case DOWN
    case LEFT
    case RIGHT
}

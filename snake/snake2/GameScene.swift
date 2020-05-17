//
//  GameScene.swift
//  snake
//
//  Created by  Igor Nadiein on 16.05.2020.
//  Copyright © 2020  Igor Nadiein. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        self.anchorPoint = .zero // place the main axis for drawing grid to coords X/Y = 0
        
        let GRID_STEP = 50
        let sizeH = self.size.height // vertical available screen size - float number
        let sizeW = self.size.width // horizontal available screen size
        
        for i in 1...50 { // vertical grid
            let node = SKShapeNode()
            let path = CGMutablePath()
            
            path.move(to: CGPoint(x: i * GRID_STEP, y: Int(sizeH))) // cgpoint works with ints
            path.addLine(to: CGPoint(x: i*50, y: 0))
            node.path = path
            node.strokeColor = SKColor.white
            addChild(node)
        }
        
        for i in 1...50 { // horizontal grid
            let node = SKShapeNode()
            let path = CGMutablePath()
            path.move(to: CGPoint(x: Int(sizeW), y: i * GRID_STEP))
            path.addLine(to: CGPoint(x: 0, y: i*50))
            node.path = path
            node.strokeColor = SKColor.white
            addChild(node)
        }
    }
}

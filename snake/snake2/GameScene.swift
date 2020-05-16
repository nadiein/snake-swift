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
        for i in 1...50 {
//            let path = UIBezierPath()
//            path.move(to: <#T##CGPoint#>(x:i*5, y:i*5))
//            path.addLine(to: <#T##CGPoint#>(x:i*5, y:i*5))
//            path.close()
            let grid = SKSpriteNode(color: .red, size: CGSize(width: self.size.width, height: 1))
            grid.position = CGPoint(x:0, y:i*50)
            self.addChild(grid)
        }
        
        for i in 1...20 {
//            let path = UIBezierPath()
//            path.move(to: <#T##CGPoint#>(x:i*5, y:i*5))
//            path.addLine(to: <#T##CGPoint#>(x:i*5, y:i*5))
//            path.close()
            let grid = SKSpriteNode(color: .red, size: CGSize(width: 1, height: self.size.height))
            grid.position = CGPoint(x:i*50, y:0)
            self.addChild(grid)
        }
    }
}

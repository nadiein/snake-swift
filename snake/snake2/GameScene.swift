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
        initGameScene();
    }
    
    private func initGameScene() {
        self.anchorPoint = .zero // place the main axis for drawing grid to coords X/Y = 0
        let GRID_STEP:Int = 50
        let sizeH:CGFloat = self.size.height // vertical available screen size - float number
        let sizeW:CGFloat = self.size.width // horizontal available screen size
        
        drawGrid(width:sizeW, height:sizeH, step:GRID_STEP)
    }

    private func drawGrid(width:CGFloat, height:CGFloat, step:Int) {
        let basePoint:CGFloat = 50;
        let rect = CGRect(origin: CGPoint(x: basePoint*2, y: basePoint), size: CGSize(width: width - basePoint*4, height: height - basePoint*2)) //TODO: get real gap from skview api and set real
                                                                                                                                                // position for grid
        let borderNode = SKShapeNode(rect: rect)
        borderNode.strokeColor = SKColor.white
        
        for i in 1...50 { // vertical grid
            let node = SKShapeNode()
            let path = CGMutablePath()

            path.move(to: CGPoint(x: i*step * Int(basePoint)*2, y: Int(height))) // cgpoint works with ints
            path.addLine(to: CGPoint(x: i*50 * Int(basePoint)*2, y: 0))
            node.path = path
            node.strokeColor = SKColor.white
            addChild(node)
        }

        for i in 1...50 { // horizontal grid
            let node = SKShapeNode()
            let path = CGMutablePath()
                
            path.move(to: CGPoint(x: Int(width), y: i * step))
            path.addLine(to: CGPoint(x: 0, y: i*50))
            node.path = path
            node.strokeColor = SKColor.white
            addChild(node)
        }

        addChild(borderNode)
    }
}

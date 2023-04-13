//
//  GameScene.swift
//  Speed Square
//
//  Created by Steven Grutman on 3/18/23.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    private let worldNode = SKNode()
    private var bgNode: SKSpriteNode!
    
    private let square1 = SquareNode(color: UIColor.blue)
    
    override func sceneDidLoad() {
        
    }
    
    override func didMove(to view: SKView) {
        setupNodes()
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
    }
    
    
    override func update(_ currentTime: TimeInterval) {

    }
}

extension GameScene {
    
    private func setupNodes(){
        backgroundColor = .white
        
        addChild(worldNode)
        
        square1.position = CGPoint(x: frame.midX, y: frame.midY)
        
        worldNode.addChild(square1)
       
    }
    
}

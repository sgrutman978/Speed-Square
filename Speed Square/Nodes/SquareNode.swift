//
//  Square.swift
//  Speed Square
//
//  Created by Steven Grutman on 4/10/23.
//

import SpriteKit

class SquareNode: SKNode {
    
    private var player: SKShapeNode!
    var checked = false
    var color: UIColor!
    var direction: Int!
    
    init(color: UIColor, direction: Int){
        super.init()
        self.color = color
        self.direction = direction
        self.setupSquare()
        self.zPosition = 10.0
        self.name = "square1"
    }

    required init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
    }
    
}

extension SquareNode {
    
    private func setupSquare(){
        player = SKShapeNode(rect: CGRect(x: 0, y: 0, width: 180, height: 180))
        setColor(color: self.color)
        addChild(player)
    }
    
    func setColor(color: UIColor){
        self.color = color
        player.fillColor = self.color
    }
    
}

//
//  Square.swift
//  Speed Square
//
//  Created by Steven Grutman on 4/10/23.
//

import SpriteKit

class RectangleNode: SKNode {
    
    private var player: SKShapeNode!
    var checked = false
    var color: UIColor!
    var y: Int!
    
    init(color: UIColor, y: Int){
        super.init()
        self.y = y
        self.color = color
        self.setupRectangle()
        self.zPosition = 10.0
        self.name = "square1"
    }

    required init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
    }
    
}

extension RectangleNode {
    
    private func setupRectangle(){
        player = SKShapeNode(rect: CGRect(x: 250, y: y, width: 1000, height: 180))
        player.fillColor = self.color
        addChild(player)
    }
    
}

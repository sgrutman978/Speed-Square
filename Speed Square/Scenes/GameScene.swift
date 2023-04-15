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
    private var squares: [SquareNode] = []
    private var rectangles: [RectangleNode] = []
    private let colorList: [UIColor] = [.blue, .green, .lightGray, .brown, .gray, .purple, .orange, .yellow, .red, .black]
    
    @objc func moveSquare()
    {
        for square in squares {
            square.position.x = square.position.x - (square.direction == 0 ? -2 : 2)
            if(square.position.x <= -190 && square.direction != 0){
                square.position.x = 1330
                square.setColor(color: colorList.randomElement()!)
            }
            if(square.position.x >= 1330 && square.direction == 0){
                square.position.x = -190
                square.setColor(color: colorList.randomElement()!)
            }
        }
    }
    
    override func sceneDidLoad() {
        
    }
    
    override func didMove(to view: SKView) {
//        let rect1 = SquareNode(color: UIColor.blue)
//        let x = CGPoint(x: i*210, y: 150)
//        newSquare.position = x
//        squares.append(newSquare)
        for j in stride(from: 0, to: 7, by: 2) {
            for i in 1...8 {
                let newSquare = SquareNode(color: colorList.randomElement()!, direction: j%4)
                let x = CGPoint(x: i*190 - (j%4 != 0 ? 0 : 190), y: (190*j)+150)
                newSquare.position = x
                squares.append(newSquare)
            }
            rectangles.append(RectangleNode(color: colorList.randomElement()!, y: 150+(190*(j+1))))
        }
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
        for square in squares{
            worldNode.addChild(square)
        }
        Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(moveSquare), userInfo: nil, repeats: true)
        for rectangle in rectangles{
            worldNode.addChild(rectangle)
        }
    }
    
}

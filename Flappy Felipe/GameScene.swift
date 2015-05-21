//
//  GameScene.swift
//  Flappy Felipe
//
//  Created by Gonzalo Antonicelli on 5/20/15.
//  Copyright (c) 2015 Gonzalo Antonicelli. All rights reserved.
//

import SpriteKit
enum Layer: CGFloat {
    case Background
    case Foreground
    case Player
}

class GameScene: SKScene {

    let worldNode = SKNode()
    var playableStart: CGFloat = 0
    var playableHeight: CGFloat = 0
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        addChild(worldNode)
        setupBackground()
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
    
    // Setup Methods
    
    func setupBackground(){
        let background = SKSpriteNode(imageNamed: "Background")
        background.anchorPoint = CGPoint(x: 0.5, y: 1.0)
        background.position = CGPoint(x: size.width/2, y: size.height)
        background.zPosition = Layer.Background.rawValue
        worldNode.addChild(background)
        
        playableHeight = background.size.height
        playableStart = size.height - background.size.height
    }
    
    func setupForeground(){
        let foreground = SKSpriteNode(imageNamed: "Ground")
        foreground.anchorPoint = CGPoint(x: 0, y: 1)
        foreground.position = CGPoint(x: 0, y: playableStart)
        foreground.zPosition = Layer.Foreground.rawValue
        worldNode.addChild(foreground)
    }
}

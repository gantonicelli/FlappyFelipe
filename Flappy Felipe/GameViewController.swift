//
//  GameViewController.swift
//  Flappy Felipe
//
//  Created by Gonzalo Antonicelli on 5/20/15.
//  Copyright (c) 2015 Gonzalo Antonicelli. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController : UIViewController {
    
    override func viewWillLayoutSubviews() {
        
        super.viewWillLayoutSubviews()
        
        if let skView = self.view as? SKView {
            if skView.scene == nil {
                // Create the scene
                let aspectRatio = skView.bounds.size.height / skView.bounds.size.width // Formula for Aspect Ratio
                let scene = GameScene(size:CGSize(width: 320, height: 320 * aspectRatio))
                
                skView.showsFPS = true
                skView.showsNodeCount = true
                skView.showsPhysics = true
                skView.ignoresSiblingOrder = true // -- > Faster and what you should do is set the z position of each sprite as you add it so its in the proper order you want.
                
                scene.scaleMode = .AspectFill
                
                skView.presentScene(scene)
            
            }
        }
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
}
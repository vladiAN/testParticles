//
//  File.swift
//  testParticles
//
//  Created by Андрушок on 02.12.2022.
//

import UIKit
import SpriteKit

class LightsParticleScene: SKScene {
    
    var background = SKSpriteNode(imageNamed: "christmas-tree")
    
    
    
    override func didMove(to view: SKView) {
        super.didMove(to: view)
        
        backgroundSetup()

    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
    
        if let touch = touches.first {
            let touchLocation = touch.location(in: self)
            if let particle = SKEmitterNode(fileNamed: "Lights") {
                
                particle.position = touchLocation
                
                particle.run(.wait(forDuration: 5)) {
                    particle.removeFromParent()
                    
                }
                
                addChild(particle)
                
            }
        }
    }
    
    private func backgroundSetup() {
        background.position = CGPoint(x: 0, y: 0)
        background.size.width = self.size.width
        background.size.height = self.size.height + 200
        background.anchorPoint = CGPoint(x: 0, y: 0)
        self.addChild(background)
    }
    
}

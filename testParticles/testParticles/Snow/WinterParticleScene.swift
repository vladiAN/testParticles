//
//  File.swift
//  testParticles
//
//  Created by Андрушок on 01.12.2022.
//

import Foundation
import SpriteKit

class WinterParticleScene: SKScene {
    
    var background = SKSpriteNode(imageNamed: "snow")
    
    override func didMove(to view: SKView) {
    
        super.didMove(to: view)
        
        setupParticleEmitter(fileNamed: "Snow", pozitionX: Int(size.width / 2), pozitionY: Int(size.height))
        
        setupParticleEmitter(fileNamed: "Smoke", pozitionX: 639, pozitionY: 1479)
        
        backgroundSetup()
    }

    
    private func setupParticleEmitter(fileNamed: String, pozitionX: Int, pozitionY: Int) {
        let particleEmitter = SKEmitterNode(fileNamed: fileNamed)!
        particleEmitter.position = CGPoint(x: pozitionX, y: pozitionY)
        particleEmitter.advanceSimulationTime(50)
        addChild(particleEmitter)
    }
    
    private func backgroundSetup() {
        background.position = CGPoint(x: 0, y: 0)
        background.size.width = self.size.width
        background.size.height = self.size.height
        background.anchorPoint = CGPoint(x: 0, y: 0)
        self.addChild(background)
    }
}

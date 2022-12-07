//
//  File.swift
//  testParticles
//
//  Created by Андрушок on 01.12.2022.
//

import UIKit
import SpriteKit
import GameplayKit

class WinterViewController: UIViewController {
    
    private let skView = SKView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        initSkScene()
        makeButtonMenu()
    }
    
     func makeButtonMenu() {
        let buttonMenu = UIButton(frame: CGRect(x: 10, y: 40, width: 80, height: 30))
        buttonMenu.setTitle("< Menu", for: .normal)
        buttonMenu.backgroundColor = .blue
        buttonMenu.layer.cornerRadius = 10
        buttonMenu.addTarget(self, action: #selector(buttonTappet), for: .touchUpInside)
        view.addSubview(buttonMenu)
        buttonMenu.layer.zPosition = 1
    }
    
    @objc func buttonTappet() {
        let story = UIStoryboard(name: "Main", bundle: nil)
        let vc = story.instantiateViewController(withIdentifier: "menu")
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
    }
    
    private func setupUI() {
        
        view.addSubview(skView)
        skView.translatesAutoresizingMaskIntoConstraints = false

        let top = skView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0)
        let leading = skView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0)
        let trailing = skView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0)
        let bottom = skView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)

        NSLayoutConstraint.activate([top, leading, trailing, bottom])

    }
    
    private func initSkScene() {
        let particleScene = WinterParticleScene(size: CGSize(width: 1000, height: 1980))
        particleScene.scaleMode = .aspectFill
        
        skView.presentScene(particleScene)
    }
}

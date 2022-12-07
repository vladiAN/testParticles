//
//  MainViewController.swift
//  testParticles
//
//  Created by Андрушок on 05.12.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func winterTapped(_ sender: Any) {
        showVC(nameVC: "winter")
    }
    
    
    @IBAction func fireTapped(_ sender: Any) {
        showVC(nameVC: "lights")
        
    }
    
     open func showVC(nameVC: String) {
        let story = UIStoryboard(name: "Main", bundle: nil)
        let vc = story.instantiateViewController(withIdentifier: nameVC)
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
        
    }
}

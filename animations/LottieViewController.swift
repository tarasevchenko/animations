//
//  LottieViewController.swift
//  animations
//
//  Created by Тарас Евченко on 22.11.2021.
//

import UIKit
import Lottie

class LottieViewController: UIViewController {
    
    @IBOutlet weak var animationView: AnimationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animationView.animation = Animation.named("heart")
    }
    
    @IBAction func animationButtonTapped(_ sender: Any) {
        animationView.play(completion: nil)
    }
    
}

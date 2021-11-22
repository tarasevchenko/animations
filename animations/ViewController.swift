//
//  ViewController.swift
//  animations
//
//  Created by Тарас Евченко on 22.11.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var pinkViewBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var pinkView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func layerAnimationButtonTapped(_ sender: Any) {
        
        let animation = CABasicAnimation(keyPath: "cornerRadius")
        
        animation.fromValue = 0
        animation.toValue = pinkView.bounds.height / 2
        animation.duration = 2
        animation.repeatCount = 4
        animation.autoreverses = true
        
        pinkView.layer.add(animation, forKey: "cornerRadius")
        
        //        UIView.animate(
        //            withDuration: 1,
        //            animations: { [weak self] in
        //                guard let self = self else {
        //                    return
        //                }
        //                self.pinkView.layer.cornerRadius = self.pinkView.bounds.height / 2
        //                self.view.layoutIfNeeded()
        //            },
        //            completion: nil)
    }
    
    @IBAction func animationButtonTapped(_ sender: Any) {
        UIView.animate(
            withDuration: 3,
            delay: 0,
            usingSpringWithDamping: 0.9,
            initialSpringVelocity: 3,
            options: [],
            animations: { [weak self] in
                self?.pinkViewBottomConstraint.constant = 10
                self?.scale()
                self?.rotate()
                self?.getRandomColor()
                self?.view.layoutIfNeeded()
            },
            completion: nil)
    }
    
    private func rotate() {
        pinkView.transform = pinkView.transform.rotated(by: .pi / 2)
    }
    
    private func scale() {
        pinkView.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
    }
    
    func getRandomColor() {
        let red   = CGFloat((arc4random() % 256)) / 255.0
        let green = CGFloat((arc4random() % 256)) / 255.0
        let blue  = CGFloat((arc4random() % 256)) / 255.0
        let alpha = CGFloat(1.0)
        
        UIView.animate(
            withDuration: 1.0,
            delay: 0.0,
            options:[.repeat, .autoreverse],
            animations: {
                self.pinkView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: alpha)
            }, completion:nil
        )
    }
    
}

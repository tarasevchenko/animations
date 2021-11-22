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
    
    @IBAction func layerAnimationButtonTappeeed(_ sender: Any) {
        UIView.animate(
            withDuration: 1,
            animations: { [weak self] in
                guard let self = self else {
                    return
                }
                self.pinkView.layer.cornerRadius = self.pinkView.bounds.height / 2
                self.view.layoutIfNeeded()
            },
            completion: nil)
    }
    
    @IBAction func anumtionButtonTapped(_ sender: Any) {
        UIView.animate(
            withDuration: 3,
            delay: 0,
            usingSpringWithDamping: 10,
            initialSpringVelocity: 5,
            options: [],
            
            animations: { [weak self] in
                self?.pinkViewBottomConstraint.constant = 10
                self?.scale()
                self?.rotate()
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
    
}

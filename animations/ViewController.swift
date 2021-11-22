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
    
    @IBAction func anumtionButtonTapped(_ sender: Any) {
        UIView.animate(
            withDuration: 3,
            delay: 0,
            options: [],
            
            animations: { [weak self] in
                self?.pinkViewBottomConstraint.constant = 10
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

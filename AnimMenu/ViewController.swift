//
//  ViewController.swift
//  AnimMenu
//
//  Created by Kacper Kuźniak on 15/09/2017.
//  Copyright © 2017 Kacper Kuźniak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var darkFillView: EditableView!
    @IBOutlet weak var toggleMenuButton: UIButton!
    @IBOutlet weak var fb: UIButton!
    @IBOutlet weak var dribble: UIButton!
    @IBOutlet weak var twitter: UIButton!
    @IBOutlet weak var insta: UIButton!
    @IBOutlet weak var menuView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fb.alpha = 0
        dribble.alpha = 0
        twitter.alpha = 0
        insta.alpha = 0
    }

    @IBAction func toggleMenu(_ sender: UIButton) {
        
        if darkFillView.transform == .identity {
            UIView.animate(withDuration: 0.5, animations: {
                self.darkFillView.transform = CGAffineTransform(scaleX: 5, y: 5)
                self.toggleMenuButton.transform = CGAffineTransform(rotationAngle: self.radians(180))
            }) {  (true) in
                UIView.animate(withDuration: 0.3, animations: {
                    self.toggleSharedButtons()
                })
            }
        } else {
            UIView.animate(withDuration: 0.5, animations: {
                self.darkFillView.transform = .identity
                self.toggleMenuButton.transform = .identity
            })
            UIView.animate(withDuration: 0.08, animations: {
                self.toggleSharedButtons()
            })
        }
    }
    
    func toggleSharedButtons() {
        let alpha = CGFloat(fb.alpha == 0 ? 1 : 0)
        fb.alpha = alpha
        dribble.alpha = alpha
        twitter.alpha = alpha
        insta.alpha = alpha
    }
    
    func radians(_ degrees: Double) -> CGFloat {
        return CGFloat(degrees * .pi / degrees)
    }

}


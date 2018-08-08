//
//  EditableView.swift
//  AnimMenu
//
//  Created by Kacper Kuźniak on 15/09/2017.
//  Copyright © 2017 Kacper Kuźniak. All rights reserved.
//

import UIKit

@IBDesignable
class EditableView: UIView {
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }

}

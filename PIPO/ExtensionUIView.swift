//
//  ExtensionUIView.swift
//  PIPO
//
//  Created by Thang Cao Hoang on 05/12/2016.
//  Copyright © 2016 Thang Cao Hoang. All rights reserved.
//

import Foundation
import UIKit

extension UIView {

    func makeRoundCorner(_ cornerRadius: CGFloat){
        self.clipsToBounds = true
        self.layer.cornerRadius = cornerRadius
    }
    
    func makeBorder(_ borderRadius: CGFloat, color: CGColor) {
        clipsToBounds = true
        layer.borderWidth = borderRadius
        
        if color != UIColor.clear.cgColor {
            layer.borderColor = color
        }
    }
    
    func makeCircle() {
        clipsToBounds = true
        layer.cornerRadius = frame.size.width / 2
    }
}

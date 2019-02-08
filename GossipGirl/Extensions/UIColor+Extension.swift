//
//  UIColor+Extension.swift
//  GossipGirl
//
//  Created by Kim Page on 2/8/19.
//  Copyright © 2019 Kim Page. All rights reserved.
//

import UIKit

extension UIColor {
    
    convenience init(r: CGFloat, g: CGFloat, b: CGFloat) {
        self.init(red: r/255, green: g/255, blue: b/255, alpha: 0.5)
    }
    
}

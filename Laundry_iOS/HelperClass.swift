//
//  HelperClass.swift
//  Laundry_iOS
//
//  Created by Mac-003 on 29/09/22.
//

import Foundation
import UIKit
import QuartzCore

extension UIView {

    func roundCorners(corners:UIRectCorner, radius: CGFloat) {

        DispatchQueue.main.async {
            let path = UIBezierPath(roundedRect: self.bounds,
                                    byRoundingCorners: corners,
                                    cornerRadii: CGSize(width: radius, height: radius))
            let maskLayer = CAShapeLayer()
            maskLayer.frame = self.bounds
            maskLayer.path = path.cgPath
            self.layer.mask = maskLayer
        }
    }
        
    func addTopShadow(shadowColor : UIColor, shadowOpacity : Float,shadowRadius : CGFloat,offset:CGSize){
        self.layer.shadowColor = shadowColor.cgColor
        self.layer.shadowOffset = offset
        self.layer.shadowOpacity = shadowOpacity
        self.layer.shadowRadius = shadowRadius
        self.clipsToBounds = false
    }


}

extension UIColor {
    
    struct ThemeColor {
        static let darkColour = UIColor(red: 27/255.0, green: 72/255.0, blue: 111/255.0, alpha: 1)
        static let lightColour = UIColor(red: 147/255.0, green: 208/255.0, blue: 237/255.0, alpha: 1)

    }
}

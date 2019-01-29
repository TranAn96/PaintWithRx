//
//  UIView+Extension.swift
//  PaintWithRx
//
//  Created by Trần An on 1/29/19.
//  Copyright © 2019 AnTran. All rights reserved.
//

import UIKit

extension UIView {
    func snapShotImage() -> UIImage? {
        var image: UIImage?
        UIGraphicsBeginImageContext(self.frame.size)
        if let context = UIGraphicsGetCurrentContext() {
            self.layer.render(in: context)
            image = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext()
        }
        return image
    }
}

//
//  UIImage+Rotate.swift
//  Stockey
//
//  Created by Masanori Nakano on 2019/06/01.
//  Copyright © 2019 D128. All rights reserved.
//

import UIKit

extension UIImage {

    // 参考：https://qiita.com/taji-taji/items/4f01273b303edec45d46
    func rotatedBy(degree: CGFloat) -> UIImage? {
        let radian: CGFloat = -degree * CGFloat.pi / 180.0
        var rotatedRect: CGRect = CGRect(origin: .zero,
                                         size: self.size)
        rotatedRect = rotatedRect.applying(CGAffineTransform(rotationAngle: radian))

        UIGraphicsBeginImageContext(rotatedRect.size)
        guard let context: CGContext = UIGraphicsGetCurrentContext(),
            let cgImage: CGImage = self.cgImage else {
            UIGraphicsEndImageContext()
            return nil
        }
        
        context.translateBy(x: rotatedRect.size.width / 2,
                            y: rotatedRect.size.height / 2)
        context.scaleBy(x: 1.0, y: -1.0)
        
        context.rotate(by: radian)
        context.draw(cgImage,
                     in: CGRect(x: -(self.size.width / 2),
                                y: -(self.size.height / 2),
                                width: self.size.width,
                                height: self.size.height))
        
        let rotatedImage: UIImage? = UIGraphicsGetImageFromCurrentImageContext()
        
        UIGraphicsEndImageContext()
        
        return rotatedImage
    }
    
}

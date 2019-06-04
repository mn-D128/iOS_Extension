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
    var rotate90Degree: UIImage? {
        let radian: CGFloat = -90.0 * CGFloat.pi / 180.0
        let rotatedRect: CGRect = CGRect(origin: .zero,
                                         size: CGSize(width: self.size.height,
                                                      height: self.size.width))

        UIGraphicsBeginImageContext(rotatedRect.size)
        guard let context: CGContext = UIGraphicsGetCurrentContext(),
            let cgImage: CGImage = self.cgImage else {
            UIGraphicsEndImageContext()
            return nil
        }
        
        context.translateBy(x: rotatedRect.size.width / 2.0,
                            y: rotatedRect.size.height / 2.0)
        context.scaleBy(x: 1.0, y: -1.0)
        
        context.rotate(by: radian)
        context.draw(cgImage,
                     in: CGRect(x: -(self.size.width / 2.0),
                                y: -(self.size.height / 2.0),
                                width: self.size.width,
                                height: self.size.height))
        
        let rotatedImage: UIImage? = UIGraphicsGetImageFromCurrentImageContext()
        
        UIGraphicsEndImageContext()
        
        return rotatedImage
    }
    
}

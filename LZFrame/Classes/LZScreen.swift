//
//  LZScreen.swift
//  LZFrame
//
//  Created by 陈建蕾 on 2021/2/26.
//

import Foundation

extension UIScreen: LZCompatible { }

public extension LZWrapper where Base: UIScreen {
    
    static var bounds: CGRect {
        return UIScreen.main.bounds
    }
    
    static var size: CGSize {
        return bounds.size
    }
    
    static var width: CGFloat {
        size.width
    }
    
    static var height: CGFloat {
        size.height
    }
    
    static var scale: CGFloat {
        UIScreen.main.scale
    }
}

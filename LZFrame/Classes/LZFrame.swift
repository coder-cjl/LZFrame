//
//  LZFrame.swift
//  LZFrame
//
//  Created by 陈建蕾 on 2021/2/26.
//

import Foundation

extension UIView: LZCompatible { }

public extension LZWrapper where Base: UIView {
    
    var width: CGFloat {
        return base.frame.size.width
    }
    
    func width(_ w: CGFloat) {
        var frame = base.frame
        frame.size.width = w
        base.frame = frame
    }
    
    var height: CGFloat {
        return base.frame.size.height
    }
    
    func height(_ h: CGFloat) {
        var frame = base.frame
        frame.size.height = h
        base.frame = frame
    }
    
    var left: CGFloat {
        return base.frame.origin.x
    }
    
    func left(_ x: CGFloat) {
        var frame = base.frame
        frame.origin.x = x
        base.frame = frame
    }
    
    var top: CGFloat {
        return base.frame.origin.y
    }
    
    func top(_ y: CGFloat) {
        var frame = base.frame
        frame.origin.y = y
        base.frame = frame
    }
    
    var right: CGFloat {
        return left + width
    }
    
    func right(_ x: CGFloat) {
        var frame = base.frame
        frame.origin.x = x - frame.size.width
        base.frame = frame
    }
    
    var bottom: CGFloat {
        return top + height
    }
    
    func bottom(_ y: CGFloat) {
        var frame = base.frame
        frame.origin.y = y - frame.size.height
        base.frame = frame
    }
    
    var center: CGPoint {
        return base.center
    }
    
    func center(_ p: CGPoint) {
        base.center = p
    }
    
    var centerX: CGFloat {
        return center.x
    }
    
    func centerX(_ x: CGFloat) {
        base.center = CGPoint.init(x: x, y: centerY)
    }
    
    var centerY: CGFloat {
        return center.y
    }
    
    func centerY(_ y: CGFloat) {
        base.center = CGPoint.init(x: centerX, y: y)
    }
    
    var size: CGSize {
        return base.frame.size
    }
    
    func size(_ s: CGSize) {
        var frame = base.frame
        frame.size = s
        base.frame = frame
    }
    
    var origin: CGPoint {
        return base.frame.origin
    }
    
    func origin(_ o: CGPoint) {
        var frame = base.frame
        frame.origin = o
        base.frame = frame
    }
}



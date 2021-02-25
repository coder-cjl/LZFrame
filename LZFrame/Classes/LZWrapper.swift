//
//  LZWrapper.swift
//  LZWrapper
//
//  Created by 陈建蕾 on 2021/2/26.
//

import Foundation


public struct LZWrapper<Base> {
    var base: Base
    init(_ base: Base) {
        self.base = base
    }
}

public protocol LZCompatible { }

extension LZCompatible {
    public var lz: LZWrapper<Self> { LZWrapper(self) }
    public static var lz: LZWrapper<Self>.Type { LZWrapper<Self>.self }
}

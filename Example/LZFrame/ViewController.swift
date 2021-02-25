//
//  ViewController.swift
//  LZFrame
//
//  Created by cjlsire@126.com on 02/26/2021.
//  Copyright (c) 2021 cjlsire@126.com. All rights reserved.
//

import UIKit
import LZFrame

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("UIScreen with : \(UIScreen.lz.width)")
        print("UIScreen height: \(UIScreen.lz.height)")
        print("UIScreen scale: \(UIScreen.lz.scale)")
        print("UIScreen bounds: \(UIScreen.lz.bounds)")
        print("UIScreen size: \(UIScreen.lz.size)")
        
        view.addSubview(testView)
        testView.lz.size(.init(width: 100, height: 100))
        testView.lz.centerX(view.lz.centerX)
        testView.lz.centerY(view.lz.centerY - 200)
    }
    
    lazy var testView: UIView = {
        let v = UIView()
        v.backgroundColor = .red
        return v
    }()
}


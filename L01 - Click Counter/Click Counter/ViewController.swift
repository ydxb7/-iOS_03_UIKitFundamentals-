//
//  ViewController.swift
//  Click Counter
//
//  Created by Yini Duanmu on 6/7/20.
//  Copyright © 2020 Yini Duanmu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // label
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
        label.text = "0"
        view.addSubview(label)
        self.label = label
        
        // button
        let button = UIButton()
        button.frame = CGRect(x: 150, y: 250, width: 60, height: 60)
        button.setTitle("Click", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(button)
        
        button.addTarget(self, action: #selector(ViewController.inccrementCount), for: UIControl.Event.touchUpInside)
    }

    @objc func inccrementCount() {
        self.count += 1
        self.label.text = "\(self.count)"
    }

}


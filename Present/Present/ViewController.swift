//
//  ViewController.swift
//  Present
//
//  Created by Yini Duanmu on 6/13/20.
//  Copyright © 2020 Yini Duanmu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var presentButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func experiment(sender: UIButton) {
        let nextController = UIImagePickerController()
        present(nextController, animated: true, completion: nil)
    }
    
}


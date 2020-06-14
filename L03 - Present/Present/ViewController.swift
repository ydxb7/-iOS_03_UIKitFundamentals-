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
    @IBOutlet var activityButton: UIButton!
    @IBOutlet var alertButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func experiment(sender: UIButton) {
        let nextController = UIImagePickerController()
        present(nextController, animated: true, completion: nil)
    }
    
    @IBAction func activity(sender: UIButton) {
        let image = UIImage()
        let controller = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        present(controller, animated: true, completion: nil)
    }
    
    @IBAction func alert(sender: UIButton) {
        let controller = UIAlertController()
        
        controller.title = "Test Alert"
        controller.message = "This is a test"
        
        let okAction = UIAlertAction(title: "ok", style: UIAlertAction.Style.default) { action in
            self.dismiss(animated: true, completion: nil)
        }
        
        controller.addAction(okAction)
        present(controller, animated: true, completion: nil)
    }
    
}


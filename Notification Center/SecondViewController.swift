//
//  SecondViewController.swift
//  Notification Center
//
//  Created by Admin on 10/11/22.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func facebookButton(_ sender: UIButton) {
        let name = Notification.Name(rawValue: facebookKey)
        NotificationCenter.default.post(name: name, object: nil)
    }
    
    @IBAction func twitterButton(_ sender: UIButton) {
        let name = Notification.Name(rawValue: twitterKey)
        NotificationCenter.default.post(name: name, object: nil)
    }
    
    
}

//
//  ViewController.swift
//  Notification Center
//
//  Created by Admin on 10/11/22.
//

import UIKit

let facebookKey = "com.bridgelabz.facebook"
let twitterKey = "com.brigelabz.twitter"

class ViewController: UIViewController {
    
    let facebookNotification = Notification.Name(rawValue: facebookKey)
    let twitterNotification = Notification.Name(rawValue: twitterKey)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createObservers()
        
    }
    
    func createObservers(){
        NotificationCenter.default.addObserver(self, selector: #selector(facebook), name: facebookNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(twitter), name: twitterNotification, object: nil)
        
    }
    
    @objc func facebook(){
        answerField.text = "facebook"
        imageField.image = UIImage(named: "Facebook")
        //let isFacebook = notification.name == facebook
        //let image = isFacebook ? UIImage(named: "Facebook")! : UIImage(named: "Twitter")!
    
        
    }
    
    @objc func twitter(){
        answerField.text = "twitter"
        imageField.image = UIImage(named: "Twitter")
        
    }
    
    @IBOutlet weak var answerField: UILabel!
    
    @IBOutlet weak var imageField: UIImageView!
    
    
    @IBAction func GoTobutton(_ sender: Any) {
        let secondVC = storyboard?.instantiateViewController(withIdentifier: "selected") as! SecondViewController
        self.navigationController?.pushViewController(secondVC, animated: true)
        
    }
    
}

//extension Notification.Name {
//        static let facebook = Notification.Name("facebook")
//        static let twitter = Notification.Name("twitter")
//
//    }
//
    



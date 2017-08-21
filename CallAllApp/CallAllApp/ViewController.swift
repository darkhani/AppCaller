//
//  ViewController.swift
//  CallAllApp
//
//  Created by INTAEK HAN on 2017. 8. 22..
//  Copyright © 2017년 INTAEK HAN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var key1: UITextField!
    @IBOutlet weak var key2: UITextField!

    @IBOutlet weak var value1: UITextField!
    @IBOutlet weak var value2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func touchURLButton(_ sender: Any) {
        var urlString:String = "callTestApp://?"
        if key1.text != "" && value1.text != "" {
            urlString = urlString.appending("\(key1.text!)=\(value1.text!)")
        }
        
        if key2.text != "" && value2.text != "" {
            urlString = urlString.appending("&\(key2.text!)=\(value2.text!)")
        }
        
        if urlString == "callTestApp://?" {
            urlString = "callTestApp://?test=1"
        }
//        let url:URL = URL(string: "callTestApp://?test=1")!
        let url:URL = URL(string: urlString)!
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.openURL(url)
        } else {
            let itunesUrl:URL = URL(string: "https://itunes.apple.com/itunes-link-to-app")!
            
            if UIApplication.shared.canOpenURL(itunesUrl){
                UIApplication.shared.openURL(itunesUrl)
            }
        }
        
        
    }
    
}


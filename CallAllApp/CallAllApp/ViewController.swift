//
//  ViewController.swift
//  CallAllApp
//
//  Created by INTAEK HAN on 2017. 8. 22..
//  Copyright © 2017년 INTAEK HAN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func touchURLButton(_ sender: Any) {
        let url:URL = URL(string: "callTestApp://?test=1")!
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


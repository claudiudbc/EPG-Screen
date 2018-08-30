//
//  ViewController.swift
//  EPG Screen
//
//  Created by Claudiu Dobre on 23/08/2018.
//  Copyright © 2018 Claudiu Dobre. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //var channels = [Channel]()
        
        APIManager.sharedInstance.getChannels { (result) in
            switch result {
            case .success(let root):
                print(root)
                
                guard let channels = root.channels else { return }
                
                for channel in channels {
                    if let title = channel.title {
                        //print(title)
                    }
                }
            case .failure(let error):
                fatalError("error: \(error.localizedDescription)")
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


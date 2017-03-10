//
//  ViewController.swift
//  FLS
//
//  Created by LiJunliang on 2017/2/20.
//  Copyright © 2017年 Kila. All rights reserved.
//

import UIKit
import React
import Parse
import ParseLiveQuery

class People: PFObject, PFSubclassing {
    @NSManaged var age: PFUser?
    @NSManaged var authorName: String?
    
    class func parseClassName() -> String {
        return "People"
    }
}



let liveQueryClient = ParseLiveQuery.Client()

class ViewController: UIViewController {
    var subscription: Subscription<People>?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //People.registerSubclass()
        let myQuery = (PFQuery.init(className: "People").whereKey("name", equalTo: "a")) as! PFQuery<People>
        subscription = liveQueryClient
        .subscribe(myQuery)
        .handle(Event.updated) { (query, message) in
            print(message)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func click(_ sender: UIButton) {
        NSLog("Hello")
        let jsCodeLocation = URL(string: "http://10.10.17.229:8081/index.ios.bundle?platform=ios")
        let mockData:NSDictionary = ["scores":
            [
                ["name":"Alex", "value":"42"],
                ["name":"Joel", "value":"10"]
            ]
        ]
        
        let rootView = RCTRootView(
            bundleURL: jsCodeLocation,
            moduleName: "RNHighScores",
            initialProperties: mockData as [NSObject : AnyObject],
            launchOptions: nil
        )
        let vc = UIViewController()
        vc.view = rootView
        self.present(vc, animated: true, completion: nil)
    }


}


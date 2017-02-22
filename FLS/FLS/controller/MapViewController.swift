//
//  MapViewController.swift
//  FLS
//
//  Created by junlianglee on 2017/2/22.
//  Copyright © 2017年 Kila. All rights reserved.
//

import UIKit

class MapViewController: UIViewController {
    var map: LLMap?
    @IBOutlet weak var menu: ButtonsView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        map = LLMap.initMapView(view: self.view)
        self.view.addSubview(map!.mapView!)
        self.view.sendSubview(toBack: map!.mapView!)
        menuOnClick()
    }
    
    func menuOnClick() {
        menu.onClick { [weak self](button) in
            switch(button.tag) {
            case 1:
                self?.dismiss(animated: true, completion: nil)
                print(button.tag)
                break
            case 2:
                print(button.tag)
                break
            case 3:
                print(button.tag)
                break
            case 4:
                print(button.tag)
                break
            case 5:
                print(button.tag)
                break
            case 6:
                print(button.tag)
                break
            case 7:
                print(button.tag)
                break
            default:
                break
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        map?.viewWillAppear()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        map?.viewWillDisappear()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    deinit {
        print("MapViewController deinit")
    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}


extension MapViewController {
    
}

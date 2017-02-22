//
//  LLMapView.swift
//  FLS
//
//  Created by junlianglee on 2017/2/22.
//  Copyright © 2017年 Kila. All rights reserved.
//

import Foundation

class LLMap:NSObject {
    private var bdMapView:BMKMapView?
    
    var mapView:UIView? {
        return bdMapView as UIView?
    }
    
    class func initMapView(view:UIView) -> LLMap {
        let map = LLMap()
        map.bdMapView = getBDMapView(view: view)
        return map
    }
    
    class func getBDMapView(view:UIView) -> BMKMapView {
        return BMKMapView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
    }
    
    func viewWillAppear() {
        bdMapView?.viewWillAppear()
        bdMapView?.delegate = self
    }
    
    func viewWillDisappear() {
        bdMapView?.viewWillDisappear()
        bdMapView?.delegate = nil
    }
    
}

extension LLMap:BMKMapViewDelegate {

}

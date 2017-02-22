//
//  LLMapManager.swift
//  LLUIKit
//
//  Created by junlianglee on 2017/2/22.
//  Copyright © 2017年 Kila. All rights reserved.
//

import Foundation

class LLMapManager:NSObject {
    var _mapManager: BMKMapManager?
    
    override init(){
        super.init()
        initBDMap()
    }
    
    func initBDMap() {
        _mapManager = BMKMapManager()
        // 如果要关注网络及授权验证事件，请设定generalDelegate参数
        let ret = _mapManager?.start("jc0dzXPwvr9UbBOA6vR1igyxZZwDLoVM", generalDelegate: self)
        if ret == false {
            NSLog("manager start failed!")
        }
    }
}

extension LLMapManager:BMKGeneralDelegate {
    func onGetNetworkState(_ iError: Int32) {
        
    }
    func onGetPermissionState(_ iError: Int32) {
        
    }
}

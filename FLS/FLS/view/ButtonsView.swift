//
//  ButtonsView.swift
//  FLS
//
//  Created by LiJunliang on 2017/2/22.
//  Copyright © 2017年 Kila. All rights reserved.
//

import Foundation
import LLUIKit


typealias ButtonClick = ((_ sender:UIButton)->Void)

@IBDesignable
class ButtonsView: XibStackView {
    
    @IBOutlet var buttons: [MultiImageButton]!
    private var _onClick:ButtonClick?
    
    @IBAction func onClick(_ sender: UIButton) {
        _onClick?(sender)
    }
    
    open override func xibTag() -> String {
        return "ButtonsView"
    }
    
    func onClick(block:@escaping ButtonClick) {
        _onClick = block
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        style1()
    }
    deinit {
        print("ButtonsView deinit")
    }
}

extension ButtonsView {
    func style1() {
        self.buttons[0].setImage(UIImage(named: "cancel"), for: .normal)
        self.buttons[1].setImage(UIImage(named: "cancel"), for: .normal)
        self.buttons[2].setImage(UIImage(named: "cancel"), for: .normal)
        self.buttons[3].setImage(UIImage(named: "cancel"), for: .normal)
        self.buttons[4].setImage(UIImage(named: "cancel"), for: .normal)
        self.buttons[5].setImage(UIImage(named: "cancel"), for: .normal)
        self.buttons[6].setImage(UIImage(named: "cancel"), for: .normal)
    }
}

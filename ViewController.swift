//
//  ViewController.swift
//  swift_add_strikethrough
//
//  Created by bihongbo on 15/3/20.
//  Copyright (c) 2015年 毕洪博. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        var strikedLabel:UILabel = UILabel()

        view.addSubview(strikedLabel)
        
        strikedLabel.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        self.view.addConstraint(NSLayoutConstraint(item: view, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: strikedLabel, attribute: NSLayoutAttribute.CenterX, multiplier: 1.0, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: view, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: strikedLabel, attribute: NSLayoutAttribute.CenterY, multiplier: 1.0, constant: 0))
        
        var mAttributeStr:NSMutableAttributedString = NSMutableAttributedString(string: "$ 12345")
        
        mAttributeStr.addAttribute(NSStrikethroughStyleAttributeName, value:NSUnderlineStyle.StyleSingle.rawValue, range: NSRange(location: 2, length: 5))
        mAttributeStr.addAttribute(NSStrikethroughStyleAttributeName, value:NSUnderlineStyle.StyleNone.rawValue, range: NSRange(location: 0, length: 2))
        
        strikedLabel.attributedText = mAttributeStr
    }
}


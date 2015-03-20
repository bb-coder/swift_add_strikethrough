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
        
        var mAttributeStr:NSMutableAttributedString = NSMutableAttributedString(string: "$¥12345")
        
        var shadow:NSShadow = NSShadow()
        shadow.shadowBlurRadius = 5
        shadow.shadowColor = UIColor.yellowColor()
        shadow.shadowOffset = CGSizeMake(1, 3)
        
        //横版还是竖版，默认横版 NSNumber:0
        mAttributeStr.addAttribute(NSVerticalGlyphFormAttributeName, value:Int(0), range: NSRange(location: 0, length: 7))
        //阴影，需要和NSVerticalGlyphFormAttributeName，NSObliquenessAttributeName，NSExpansionAttributeName一起使用才有效果
        mAttributeStr.addAttribute(NSShadowAttributeName, value:shadow, range: NSRange(location: 0, length: 7))
        //压扁字体
        mAttributeStr.addAttribute(NSExpansionAttributeName, value:Int(1), range: NSRange(location: 3, length: 2))
        //倾斜字体
        mAttributeStr.addAttribute(NSObliquenessAttributeName, value:Int(1), range: NSRange(location: 4, length: 3))
        //下划线
    mAttributeStr.addAttribute(NSUnderlineStyleAttributeName, value:NSUnderlineStyle.StyleSingle.rawValue, range: NSRange(location: 0, length: 7))
        //描边颜色
        mAttributeStr.addAttribute(NSStrokeColorAttributeName, value:UIColor.lightGrayColor(), range: NSRange(location: 0, length: 7))
        //描边方式，正值空心，负值只画边框
        mAttributeStr.addAttribute(NSStrokeWidthAttributeName, value:Float(3), range: NSRange(location: 0, length: 2))
        mAttributeStr.addAttribute(NSStrokeWidthAttributeName, value:Float(-3), range: NSRange(location: 2, length: 5))
        //字间距
        mAttributeStr.addAttribute(NSKernAttributeName, value:Int(10), range: NSRange(location: 0, length: 7))
        //字体设置
        mAttributeStr.addAttribute(NSFontAttributeName, value:UIFont.systemFontOfSize(40, weight: 5), range: NSRange(location: 2, length: 5))
        //删除线，需要将没有删除线的地方赋值为StyleNone
        mAttributeStr.addAttribute(NSStrikethroughStyleAttributeName, value:NSUnderlineStyle.StyleSingle.rawValue, range: NSRange(location: 2, length: 5))
        mAttributeStr.addAttribute(NSStrikethroughStyleAttributeName, value:NSUnderlineStyle.StyleNone.rawValue, range: NSRange(location: 0, length: 2))
        //背景颜色
        mAttributeStr.addAttribute(NSBackgroundColorAttributeName, value:UIColor.greenColor(), range: NSRange(location: 0, length: 5))
        mAttributeStr.addAttribute(NSBackgroundColorAttributeName, value:UIColor.clearColor(), range: NSRange(location: 5, length: 2))
        //字体颜色
        mAttributeStr.addAttribute(NSForegroundColorAttributeName, value:UIColor.redColor(), range: NSRange(location: 2, length: 5))
        mAttributeStr.addAttribute(NSForegroundColorAttributeName, value:UIColor.whiteColor(), range: NSRange(location: 0, length: 2))
        
        strikedLabel.attributedText = mAttributeStr
    }
}


//
//  HairLine.swift
//  HairLine
//
//  Created by Vinay Chopra on 27/02/18.
//  Copyright © 2018 Vinay Chopra. All rights reserved.
//

import Foundation
import UIKit

private let opacity: Float = 0.26
private let radius: CGFloat = 0

/// Hairline or Half pixel line for Top Half of a Pixel
open class HairLineTypeTopHalf : UIView {
    
    override open func awakeFromNib() {
        setup()
    }
    override public init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    func setup() {
        backgroundColor = UIColor.clear
        layer.shadowRadius = radius
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = opacity
        layer.shadowOffset = CGSize(width: 0, height: 0)
        layer.shadowPath = CGPath(rect: CGRect(x: 0, y: 0, width: frame.width, height: 1.0/UIScreen.main.scale), transform: nil)
    }
    open override func layoutSubviews() {
        super.layoutSubviews()
        layer.shadowPath = CGPath(rect: CGRect(x: 0, y: 0, width: frame.width, height: 1.0/UIScreen.main.scale), transform: nil)
    }
}

/// Hairline or Half pixel line for Bottom Half of a Pixel
open class HairLineTypeBottomHalf : UIView {
    
    override open func awakeFromNib() {
        setup()
    }
    override public init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    func setup() {
        backgroundColor = UIColor.clear
        layer.shadowRadius = radius
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = opacity
        layer.shadowOffset = CGSize(width: 0, height: 0)
        layer.shadowPath = CGPath(rect: CGRect(x: 0, y:(1.0 - 1.0/UIScreen.main.scale), width: bounds.width, height: 1.0/UIScreen.main.scale), transform: nil)
    }
    open override func layoutSubviews() {
        super.layoutSubviews()
        layer.shadowPath = CGPath(rect: CGRect(x: 0, y:(1.0 - 1.0/UIScreen.main.scale), width: bounds.width, height: 1.0/UIScreen.main.scale), transform: nil)
    }
}

/// Hairline or Half pixel line for Vertical left Half of a Pixel
open class HairLineTypeLeftHalfVertical : UIView {
    
    override open func awakeFromNib() {
        setup()
    }
    override public init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    func setup() {
        backgroundColor = UIColor.clear
        layer.shadowRadius = radius
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = opacity
        layer.shadowOffset = CGSize(width: 0, height: 0)
        layer.shadowPath = CGPath(rect: CGRect(x: 0, y: 0, width: 1.0/UIScreen.main.scale , height:bounds.height ), transform: nil)
    }
    open override func layoutSubviews() {
        super.layoutSubviews()
        layer.shadowPath = CGPath(rect: CGRect(x: 0, y: 0, width: 1.0/UIScreen.main.scale , height:bounds.height ), transform: nil)
    }
}

/// Hairline or Half pixel line for Vertical right Half of a Pixel
open class HairLineTypeRightHalfVertical : UIView {
    
    override open func awakeFromNib() {
        setup()
    }
    override public init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    func setup() {
        backgroundColor = UIColor.clear
        layer.shadowRadius = radius
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = opacity
        layer.shadowOffset = CGSize(width: 0, height: 0)
        layer.shadowPath = CGPath(rect: CGRect(x: (1.0 - 1.0/UIScreen.main.scale), y: 0, width: 1.0/UIScreen.main.scale , height:bounds.height ), transform: nil)
    }
    open override func layoutSubviews() {
        super.layoutSubviews()
        layer.shadowPath = CGPath(rect: CGRect(x: (1.0 - 1.0/UIScreen.main.scale), y: 0, width: 1.0/UIScreen.main.scale , height:bounds.height ), transform: nil)
    }
}


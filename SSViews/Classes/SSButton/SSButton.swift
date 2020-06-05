//
//  SSButton.swift
//  SSViews
//
//  Created by Arka Softwares on 05/07/19.
//

import UIKit

@IBDesignable
open class SSButton: UIButton {
	
	@IBInspectable public var shadow:Bool = false {
		didSet{
			updateView()
		}
	}
	@IBInspectable public var shadowColor: UIColor = UIColor.black {
		didSet{
			updateView()
		}
	}
	@IBInspectable public var shadowRadius:CGFloat = 0 {
		didSet{
			updateView()
		}
	}
	@IBInspectable public var shadowAlpha: Float = 0.3 {
		didSet{
			updateView()
		}
	}
	@IBInspectable public var shadowX: Int = 1 {
		didSet{
			updateView()
		}
	}
	@IBInspectable public var shadowY: Int = 1 {
		didSet{
			updateView()
		}
	}
	
	@IBInspectable public var radius: Bool = false {
		didSet{
			updateView()
		}
	}
	@IBInspectable public var radiusAmt: CGFloat = 0 {
		didSet{
			updateView()
		}
	}
	
	
	private func updateView() {
		if (shadow) {
			self.layer.masksToBounds = false
			self.layer.shadowColor = shadowColor.cgColor
			self.layer.shadowOpacity = shadowAlpha
			self.layer.shadowOffset = CGSize(width: shadowX, height: shadowY)
			self.layer.shadowRadius = shadowRadius
			
			//			self.layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
			//			self.layer.shouldRasterize = true
			//        self.layer.rasterizationScale = scale ? UIScreen.main.scale : 1
		}else {
			self.layer.masksToBounds = true
			self.layer.shadowColor = nil
			self.layer.shadowOpacity = 0
			self.layer.shadowOffset = CGSize(width: 0, height: 0)
			self.layer.shadowRadius = 0
			
			//			self.layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
			//			self.layer.shouldRasterize = true
		}
		
		if(radius){
			self.layer.cornerRadius = radiusAmt;
			self.layer.shadowPath = UIBezierPath(roundedRect: self.bounds, cornerRadius: self.layer.cornerRadius).cgPath
		}else {
			self.layer.cornerRadius = 0
            self.layer.shadowPath = nil
		}
	}
	
}

//
//  NJNavigationBar.swift
//  NJDouYu
//
//  Created by HuXuPeng on 2018/5/17.
//  Copyright © 2018年 njhu. All rights reserved.
//

import UIKit

open class NJNavigationBar: UIView {
    
    public let bottomSepLineView = UIView()
    public let titleLabel = UILabel()
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override open func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
    
    private func setupUI() {
        backgroundColor = UIColor.white
        addSubview(bottomSepLineView)
        addSubview(titleLabel)
        bottomSepLineView.backgroundColor = UIColor.lightGray
        titleLabel.numberOfLines = 0
        titleLabel.textAlignment = .center
        titleLabel.textColor = UIColor.black
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        bottomSepLineView.translatesAutoresizingMaskIntoConstraints = false
//        titleLabel.backgroundColor = UIColor.yellow
        addConstraint(NSLayoutConstraint(item: titleLabel, attribute: NSLayoutConstraint.Attribute.centerX, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self, attribute: NSLayoutConstraint.Attribute.centerX, multiplier: 1, constant: 0));
        titleLabel.addConstraint(NSLayoutConstraint(item: titleLabel, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.width, multiplier: 0, constant: 44))
        addConstraint(NSLayoutConstraint(item: titleLabel, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self, attribute: NSLayoutConstraint.Attribute.width, multiplier: 0.5, constant: 0))
        addConstraint(NSLayoutConstraint(item: titleLabel, attribute: NSLayoutConstraint.Attribute.bottom, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self, attribute: NSLayoutConstraint.Attribute.bottom, multiplier: 1, constant: 0))
        
        addConstraint(NSLayoutConstraint(item: bottomSepLineView, attribute: NSLayoutConstraint.Attribute.top, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self, attribute: NSLayoutConstraint.Attribute.bottom, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: bottomSepLineView, attribute: NSLayoutConstraint.Attribute.left, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self, attribute: NSLayoutConstraint.Attribute.left, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: bottomSepLineView, attribute: NSLayoutConstraint.Attribute.right, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self, attribute: NSLayoutConstraint.Attribute.right, multiplier: 1, constant: 0))
        bottomSepLineView.addConstraint(NSLayoutConstraint(item: bottomSepLineView, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 0, constant: 1.0 / UIScreen.main.scale))
    }
    
    override open func layoutSubviews() {
        super.layoutSubviews()
    }
    override open func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    override open func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    override open func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    override open func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    override open func touchesEstimatedPropertiesUpdated(_ touches: Set<UITouch>) {
        
    }
}

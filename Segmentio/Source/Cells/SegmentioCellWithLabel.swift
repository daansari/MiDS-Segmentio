//
//  SegmentioCellWithLabel.swift
//  Segmentio
//
//  Created by Dmitriy Demchenko
//  Copyright © 2016 Yalantis Mobile. All rights reserved.
//

import UIKit

final class SegmentioCellWithLabel: SegmentioCell {
    
    override func setupConstraintsForSubviews() {
        super.setupConstraintsForSubviews()
        
        guard let containerView = containerView else {
            return
        }
        
        let views = ["containerView": containerView]
        
        // main constraints
        
        let segmentTitleLabelHorizontConstraint = NSLayoutConstraint.constraints(
            withVisualFormat: "H:|[containerView]|",
            options: [.alignAllCenterX],
            metrics: nil,
            views: views
        )
        NSLayoutConstraint.activate(segmentTitleLabelHorizontConstraint)
        
        let segmentTitleLabelVerticalConstraint = NSLayoutConstraint.constraints(
            withVisualFormat: "V:|-16-[containerView]-16-|",
            options: [.alignAllCenterY],
            metrics: nil,
            views: views
        )
        NSLayoutConstraint.activate(segmentTitleLabelVerticalConstraint)
        
        // custom constraints
        topConstraint?.isActive = false
        bottomConstraint?.isActive = false
        
//        topConstraint = NSLayoutConstraint(
//            item: containerView,
//            attribute: .top,
//            relatedBy: .equal,
//            toItem: contentView,
//            attribute: .top,
//            multiplier: 1,
//            constant: padding
//        )
//        topConstraint?.isActive = true
//
//        bottomConstraint = NSLayoutConstraint(
//            item: contentView,
//            attribute: .bottom,
//            relatedBy: .equal,
//            toItem: containerView,
//            attribute: .bottom,
//            multiplier: 1,
//            constant: padding
//        )
//        bottomConstraint?.isActive = true
    }

}

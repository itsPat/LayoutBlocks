//
//  LayoutBlockBuilder.swift
//  LayoutBlocks
//
//  Created by Pat Trudel on 6/2/22.
//

import UIKit

@resultBuilder
struct LayoutBlock {
    
    static func buildBlock(_ components: NSLayoutConstraint...) -> [NSLayoutConstraint] {
        components
    }
    
    static func buildArray(_ components: [NSLayoutConstraint]) -> [NSLayoutConstraint] {
        components
    }
    
}

extension UIView {
    
    func activateConstraints(@LayoutBlock _ constraints: (UIView) -> [NSLayoutConstraint]) {
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate(constraints(self))
    }
    
}

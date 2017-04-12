//
//  AutoLayout.swift
//  Roomify
//
//  Created by Anirudha on 26/11/16.
//  Copyright © 2016 anirudha. All rights reserved.
//

import UIKit

let screenSize = UIScreen.main.bounds // App Screen Size
let storyboardSize: CGSize = CGSize(width: 375, height: 667)

func resizeDependingOnDevice(_ view: UIView) {
    // A better way and performance
    // updating view constraints
    _ = view.constraints.filter{ $0.identifier == "height" }.map{ $0.constant = getCalculatedHeight($0.constant) }
    _ = view.constraints.filter{ $0.identifier == "width" }.map{ $0.constant = getCalculatedWidth($0.constant) }
    
    // updating subviews constraints
    _ = view.subviews.map{ $0.constraints.filter{ $0.identifier == "height" }.map{ $0.constant = getCalculatedHeight($0.constant) } }
    _ = view.subviews.map{ $0.constraints.filter{ $0.identifier == "width" }.map{ $0.constant = getCalculatedWidth($0.constant)} }
    
    let emptyPoint = CGFloat(0.0)
    func configureLabel(view: UIView) {
        let label = view as! UILabel
        label.font = label.font.withSize(getCalculatedHeight(label.font.pointSize))
    }
    
    func configureTextField(view: UIView) {
        let textField = view as! UITextField
        textField.font = textField.font?.withSize(getCalculatedHeight((textField.font?.pointSize) ?? emptyPoint))
    }
    
    func configureButton(view: UIView) {
        let button = view as! UIButton
        button.titleLabel?.font = button.titleLabel?.font.withSize(getCalculatedHeight((button.titleLabel?.font.pointSize) ?? emptyPoint))
    }
    
    func configureTextView(view: UIView) {
        let textView = view as! UITextView
        textView.font = textView.font?.withSize(getCalculatedHeight((textView.font?.pointSize) ?? emptyPoint))
    }
        
    for item in view.subviews {
        switch item {
        case is UILabel:
            configureLabel(view: item)
        case is UITextField:
            configureTextField(view: item)
        case is UIButton:
            configureButton(view: item)
        case is UITextView:
            configureTextView(view: item)
        default:
            break
        }
    }
    
}

func getCalculatedWidth(_ constant: CGFloat) -> CGFloat {
    return screenSize.width * (constant/storyboardSize.width)
}

func getCalculatedHeight(_ constant: CGFloat) -> CGFloat {
    return screenSize.height * (constant/storyboardSize.height)
}

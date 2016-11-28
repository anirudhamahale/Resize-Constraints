//
//  AutoLayout.swift
//  Roomify
//
//  Created by Anirudha on 26/11/16.
//  Copyright © 2016 anirudha. All rights reserved.
//

import UIKit

let screenSize = UIScreen.mainScreen().bounds // App Screen Size
let storyboardSize: CGSize = CGSize(width: 375, height: 667)

func resizeWidthDependingOnDevice(width: CGFloat) {
    _ = screenSize.width * (width/storyboardSize.width)
}

func resizeHeightDependingOnDevice(height: CGFloat) {
    _ = screenSize.height * (height/storyboardSize.height)
}

/*
 func adjustLayout(){
 var layout = [Any]()
 
 layout.append(SEView(view: logoImageView, topSpace: logoImageViewTopSpace))
 layout.append(SEView(view: buyOneGetOneLabel, topSpace: buyOneGetOneLabelTopSpace))
 
 setLayout(layout)
 }
 
 
 
 */
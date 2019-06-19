//
//  AppearanceHelper.swift
//  Lambda Messages Theming
//
//  Created by Dongwoo Pae on 6/18/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

enum AppearanceHelper {
    
    //this does not require instance
    static var lambdaRed = UIColor(red: 212.0/255.0, green: 87.0/255.0, blue: 80.0/255.0, alpha: 1.0)  //alpha is pretty much opacity
    static var backgroundGray = UIColor(red: 45.0/255.0, green: 45.0/255.0, blue: 45.0/255.0, alpha: 1.0)
    
    static func typerighterFont(with textStyle: UIFont.TextStyle, pointSize: CGFloat) -> UIFont {
        let font =  UIFont(name: "rm typerighter medium", size: pointSize)!
        return UIFontMetrics(forTextStyle: textStyle).scaledFont(for: font)
    }
    
    static func setDarkAppearance() {
        UINavigationBar.appearance().barTintColor = backgroundGray   //this is background color of navigation bar
        UISegmentedControl.appearance().tintColor = lambdaRed  //segmented control color
        UIBarButtonItem.appearance().tintColor = lambdaRed   //this is for barbuttons
        
        UITextField.appearance().tintColor = lambdaRed
        UITextView.appearance().tintColor = lambdaRed
        
        let textAttributes = [NSAttributedString.Key.foregroundColor : UIColor.white]  //foregroundColor is color of the text
        
        UINavigationBar.appearance().titleTextAttributes = textAttributes
        UINavigationBar.appearance().largeTitleTextAttributes = textAttributes
    }
    
    static func style(button: UIButton) {
        button.titleLabel?.font = typerighterFont(with: .callout, pointSize: 30)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = lambdaRed
        button.layer.cornerRadius = 8
    }
}

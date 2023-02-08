//
//  Constants.swift
//  m15.withSnapKit
//
//  Created by Ka4aH on 31.01.2023.
//

import UIKit

enum Constants {
    enum Colors {
        static var blackColor: UIColor? {
            UIColor(named: "Black")
        }
        
        static var grayColor: UIColor? {
            UIColor(named: "Gray")
        }
        
        static var lightColor: UIColor? {
            UIColor(named: "Light Gray")
        }
    }
    
    enum Fonts {
        static var ui16Semi: UIFont! {
            UIFont(name: "Inter-SemiBold", size: 16)
            
        }
        static var ui14Regular: UIFont? {
            UIFont(name: "Inter-Regular", size: 14)
            
        }
    }
    
    enum Text {
        static let image = ""
        static let title = "Header"
        static let text = "He'll want to use your yacht, and I don't want this thing smelling like fish."
        static let time = "8m ago"
    }
}

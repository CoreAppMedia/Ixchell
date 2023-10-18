//
//  CustomCorners.swift
//  APPUI
//
//  Created by CEDAM08 on 13/04/23.
//

import SwiftUI

struct CustomCorners: Shape {
    
    var corners: UIRectCorner
    var radio: CGFloat
    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radio, height: radio) )
        
        return Path(path.cgPath)
    }
}


//
//  FontExtension.swift
//  FoodKit
//
//  Created by Logicfocus Techonology Solution on 20/10/23.
//

import Foundation
import SwiftUI

extension Font {
    static func bentonsansRegular(size: CGFloat) -> Font {
        return Font.custom("BentonSans-Regular", size: size)
    }
    static func bentonsansBold(size: CGFloat) -> Font {
        return Font.custom("BentonSans Bold", size: size)
    }
    static func bentonsansMedium(size: CGFloat) -> Font {
        return Font.custom("BentonSans-Medium", size: size)
    }
    static func bentonsansBook(size: CGFloat) -> Font {
        return Font.custom("BentonSans-Book", size: size)
    }
}

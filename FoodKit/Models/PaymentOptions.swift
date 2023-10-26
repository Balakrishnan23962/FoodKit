//
//  PaymentOptions.swift
//  FoodKit
//
//  Created by Logicfocus Techonology Solution on 26/10/23.
//

import Foundation

enum PaymentOptions: Int, Identifiable, CaseIterable {
    case payPal
    case payoneer
    case visa
    
    var id: Int { return self.rawValue }
    var image: String {
        switch self {
        case .payPal:
            return "paypal"
        case .payoneer:
            return "Payoneer"
        case .visa:
            return "visa"
        }
    }
}

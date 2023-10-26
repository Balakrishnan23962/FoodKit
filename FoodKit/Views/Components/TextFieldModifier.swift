//
//  textFieldModifier.swift
//  FoodKit
//
//  Created by Logicfocus Techonology Solution on 25/10/23.
//

import Foundation
import SwiftUI

struct TextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .font(.bentonsansRegular(size: 14))
            .frame(width: 325, height: 57)
            .background(content: {
                Color.white
            })
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .overlay {
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.gray, lineWidth: 0.1)
            }
    }
}

struct SignUpModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.bentonsansMedium(size: 14))
            .foregroundStyle(.black)
            .frame(width: 152, height: 57)
            .background(content: {
                Color.white
            })
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .overlay {
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.gray, lineWidth: 0.1)
            }
    }
}

struct ButtonModifier: ViewModifier {
    let width: CGFloat
    let height: CGFloat
    func body(content: Content) -> some View {
        content
            .padding()
            .font(.bentonsansBold(size: 16))
            .foregroundStyle(.white)
            .frame(width: width, height: height)
            .background {
                LinearGradient(colors: [.forgotPassword, .endPoint], startPoint: .topLeading, endPoint: .bottomTrailing)
            }
            .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}
struct BioModifier: ViewModifier {
    let width: CGFloat
    let height: CGFloat
    let isTapped: Bool
    func body(content: Content) -> some View {
        content
            .padding()
            .frame(width: width, height: height)
            .background {
                isTapped ? LinearGradient(colors: [.forgotPassword, .endPoint], startPoint: .topLeading, endPoint: .bottomTrailing) : LinearGradient(colors: [.white], startPoint: .topLeading, endPoint: .bottomTrailing)
            }
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .padding(.leading)
            .padding(.top, 8)
    }
}

struct BackGroundModifier: ViewModifier {
    let image: String
    func body(content: Content) -> some View {
        content.background {
            Image(image)
                .ignoresSafeArea()
            Color.gray
                .opacity(0.05)
                .ignoresSafeArea()
                
        }
    }
}

extension View {
    func textFieldModifier() -> some View {
        modifier(TextFieldModifier())
    }
    func signUpModifier() -> some View {
        modifier(SignUpModifier())
    }
    func backgroundModifier(image: String) -> some View {
        modifier(BackGroundModifier(image: image))
    }
    func buttonModifier(width: CGFloat, height: CGFloat) -> some View {
        modifier(ButtonModifier(width: width, height: height))
    }
    func bioModifier(width: CGFloat, height: CGFloat, isTapped: Bool) -> some View {
        modifier(BioModifier(width: width, height: height, isTapped: isTapped))
    }
}

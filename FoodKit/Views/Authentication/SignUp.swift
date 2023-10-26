//
//  SignUp.swift
//  FoodKit
//
//  Created by Logicfocus Techonology Solution on 25/10/23.
//

import Foundation
import SwiftUI

struct SignUp: View {
    @State var keeoSignedIn: Bool = false
    @State var specialPrice: Bool = false
    var body: some View {
        VStack {
            Image(.logo)
            Spacer()
            VStack(spacing: 40) {
                Text("Sign Up For Free")
                    .font(.bentonsansBold(size: 20))
                VStack(alignment: .leading, spacing: 20) {
                    HStack {
                        Image(.profile)
                            .foregroundStyle(.forgotPassword)
                        TextField("Username", text: .constant(""))
                    }
                    .textFieldModifier()
                    HStack {
                        Image(.message)
                            .foregroundStyle(.forgotPassword)
                        TextField("Email", text: .constant(""))
                    }
                    .textFieldModifier()
                    HStack {
                        Image(.lock)
                            .foregroundStyle(.forgotPassword)
                        TextField("Password", text: .constant(""))
                    }
                    .textFieldModifier()
                    VStack(alignment: .leading, spacing: 10) {
                        HStack {
                            Button(action: {
                                withAnimation(.bouncy) {
                                    keeoSignedIn.toggle()
                                }
                            }, label: {
                                Image(systemName: keeoSignedIn ? "checkmark.circle.fill" : "circle")
                                    .foregroundStyle(LinearGradient(colors: [.forgotPassword, .endPoint], startPoint: .leading, endPoint: .trailing))
                            })
                            Text("Keep Me Signed In")
                                .font(.bentonsansBook(size: 12))
                        }
                        HStack {
                            Button(action: {
                                withAnimation(.bouncy) {
                                    specialPrice.toggle()
                                }
                            }, label: {
                                Image(systemName: specialPrice ? "checkmark.circle.fill" : "circle")
                                    .foregroundStyle(LinearGradient(colors: [.forgotPassword, .endPoint], startPoint: .leading, endPoint: .trailing))
                            })
                            Text("Email Me About Special Pricing")
                                .font(.bentonsansBook(size: 12))
                        }
                    }
                }
                VStack(alignment: .center, spacing: 20) {
                    NavigationLink {
                        Bio()
                            .navigationBarBackButtonHidden()
                    } label: {
                        Text("Create Account")
                            .buttonModifier(width: 175, height: 57)
                    }

                    NavigationLink {
                        SignIn()
                    } label: {
                        Text("already have an account?")
                            .font(.bentonsansMedium(size: 12))
                            .foregroundStyle(LinearGradient(colors: [.forgotPassword, .endPoint], startPoint: .leading, endPoint: .trailing))
                            .underline()
                    }

                }

            }
        }
        .backgroundModifier(image: "background1")
    }
}

#Preview {
    SignUp()
}

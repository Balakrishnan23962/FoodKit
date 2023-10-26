//
//  SignUp.swift
//  FoodKit
//
//  Created by Logicfocus Techonology Solution on 20/10/23.
//

import SwiftUI

struct SignIn: View {
    @State var pass = ""
    @State var isVisible = false
    var body: some View {
        VStack {
            Image(.logo)
            Spacer()
            VStack(spacing: 40) {
                Text("Login To Your account")
                    .font(.bentonsansBold(size: 20))
                VStack(spacing: 20) {
                    TextField("Email", text: .constant(""))
                        .textFieldModifier()
                        .padding([.leading, .trailing])
                    HStack {
                        Group {
                            if !isVisible {
                                SecureField("Password", text: $pass)
                            } else {
                                TextField("Password", text: $pass)
                            }
                        }
                        Button(action: {
                            isVisible.toggle()
                        }, label: {
                            Image(systemName: isVisible ? "eye" : "eye.slash")
                                .symbolVariant(.fill)
                                .foregroundStyle(.gray)
                                .opacity(pass.isEmpty ? 0 : 1.0)
                        })
                    }
                    .textFieldModifier()
                    .padding([.leading, .trailing])
                    Text("Or Continue With")
                        .font(.bentonsansBold(size: 12))
                    HStack(alignment: .center, spacing: 20) {
                        Button(action: {
                            
                        }, label: {
                            HStack(spacing: 10) {
                                Image(.facebookIcon)
                                Text("Facebook")
                            }
                        })
                        .signUpModifier()
                        Button(action: {
                            
                        }, label: {
                            HStack(spacing: 10) {
                                Image(.googleIcon)
                                Text("Google")
                            }
                        })
                        .signUpModifier()
                    }
                    VStack(alignment: .center) {
                        NavigationLink {
                            
                        } label: {
                            Text("Forgot Your Password?")
                                .font(.bentonsansMedium(size: 12))
                                .foregroundStyle(LinearGradient(colors: [.forgotPassword, .endPoint], startPoint: .leading, endPoint: .trailing))
                                .underline()
                        }
                        .padding(.top, 10)
                        .padding(.bottom, 40)
                        Button(action: {
                            
                        }, label: {
                            Text("Login")
                                .buttonModifier(width: 141, height: 57)
                        })
                    }
                }
            }
            Spacer()
        }
        .backgroundModifier(image: "background1")
    }
}

#Preview {
    SignIn()
}



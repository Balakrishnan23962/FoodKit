//
//  Bio.swift
//  FoodKit
//
//  Created by Logicfocus Techonology Solution on 25/10/23.
//

import SwiftUI

struct Bio: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading, spacing: 10) {
                Text("Fill in your bio to get ")
                Text("started")
            }
            .font(.bentonsansBold(size: 25))
            .padding()
            .padding(.top)
            .frame(maxWidth: .infinity, alignment: .leading)
            VStack(alignment: .leading, spacing: 10, content: {
                Text("The data will be displayed in your account")
                Text("profile for security")
            })
            .padding()
            .font(.bentonsansBook(size: 12))
            VStack(alignment: .leading, spacing: 10, content: {
                TextField("First Name", text: .constant(""))
                    .padding()
                    .frame(width: 347, height: 61)
                    .background {
                        Color.white
                    }
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .padding(.top, 8)
                    .padding(.leading, 20)
                TextField("Last Name", text: .constant(""))
                    .bioModifier(width: 347, height: 61, padding: 20)
                TextField("Mobile Number", text: .constant(""))
                    .bioModifier(width: 347, height: 61, padding: 20)
            })
            Spacer()
            NavigationLink {
                PaymentMethod()
                    .navigationBarBackButtonHidden()
            } label: {
                Text("Next")
                    .buttonModifier(width: 157, height: 57)
                    .frame(maxWidth: .infinity, alignment: .center)
            }

            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                        Button(action: {
                            dismiss()
                        }, label: {
                            Image(.iconBack)
                        })
                }
            }
            .backgroundModifier(image: "backgroundImg2")
    }
}

#Preview {
    NavigationStack {
        Bio()
    }
}

//
//  Bio.swift
//  FoodKit
//
//  Created by Logicfocus Techonology Solution on 25/10/23.
//

import SwiftUI

struct Bio: View {
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
                    .bioModifier(width: 347, height: 61)
                TextField("Last Name", text: .constant(""))
                    .bioModifier(width: 347, height: 61)
                TextField("Mobile Number", text: .constant(""))
                    .bioModifier(width: 347, height: 61)
            })
            Spacer()
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                        Button(action: {
                            
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

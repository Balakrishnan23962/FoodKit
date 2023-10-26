//
//  UploadProfileMethod.swift
//  FoodKit
//
//  Created by Logicfocus Techonology Solution on 26/10/23.
//

import SwiftUI

struct UploadProfileMethod: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack(alignment: .leading, spacing: 10, content: {
            VStack(alignment: .leading, spacing: 10) {
                Text("Upload your Photo ")
                Text("Profile")
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
            VStack(spacing: 20) {
                VStack(alignment: .center, content: {
                    Image(.gallery)
                    Text("From Gallery")
                        .font(.bentonsansBold(size: 14))
                })
                .bioModifier(width: 325, height: 129, padding: 30)
                VStack(alignment: .center, content: {
                    Image(.camera)
                    Text("Take Photo")
                        .font(.bentonsansBold(size: 14))
                })
                .bioModifier(width: 325, height: 129, padding: 30)
            }
            Spacer()
        })
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
    UploadProfileMethod()
}

//
//  UploadProfileMethod.swift
//  FoodKit
//
//  Created by Logicfocus Techonology Solution on 26/10/23.
//

import SwiftUI

struct UploadProfileMethod: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10, content: {
            Text("Upload your profile")
                .font(.bentonsansBold(size: 25))
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
            VStack(alignment: .leading, spacing: 10, content: {
                Text("The data will be displayed in your account")
                Text("profile for security")
            })
            .padding()
            .font(.bentonsansBook(size: 12))
        })
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
    UploadProfileMethod()
}

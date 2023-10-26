//
//  PaymentMethod.swift
//  FoodKit
//
//  Created by Logicfocus Techonology Solution on 26/10/23.
//

import SwiftUI

struct PaymentMethod: View {
    @State var paymentMain: PaymentOptions? = nil
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack(alignment: .leading, spacing: 10, content: {
            Text("Payment Method")
                .font(.bentonsansBold(size: 25))
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
            VStack(alignment: .leading, spacing: 10, content: {
                Text("The data will be displayed in your account")
                Text("profile for security")
            })
            .padding()
            .font(.bentonsansBook(size: 12))
            VStack {
                ForEach(PaymentOptions.allCases, id: \.self) { payment in
                    Image(payment.image)
                        .paymentModifier(width: 335, height: 73, isTapped: paymentMain == payment)
                        .onTapGesture {
                            paymentMain = payment
                        }
                }
                Spacer()
                NavigationLink {
                    UploadProfileMethod()
                        .navigationBarBackButtonHidden()
                } label: {
                    Text("Next")
                        .buttonModifier(width: 157, height: 57)
                        .frame(maxWidth: .infinity, alignment: .center)
                }

            }
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
    PaymentMethod()
}

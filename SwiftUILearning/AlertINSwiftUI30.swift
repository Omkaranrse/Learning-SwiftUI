//
//  AlertINSwiftUI.swift
//  SwiftUILearning
//
//  Created by Omkar Anarse on 01/08/23.
//

import SwiftUI

struct AlertINSwiftUI: View {
    
    @State var showAlert : Bool = false
    @State var backgroundColor : Color = .yellow
    
    var body: some View {
        ZStack {
            
            backgroundColor
                .ignoresSafeArea()
            
            Button {
                showAlert.toggle()
            } label: {
                Text("BUTTON")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.black)
                    .cornerRadius(20)
            }
            
            .alert(isPresented: $showAlert) {
                show()
            }
        }
    }
    func show() -> Alert {
        Alert(
            title: Text("Error occured"),
            primaryButton: .destructive(Text("DELETE"),action: {
                backgroundColor = .pink
            }),
            secondaryButton: .cancel(Text("CANCEL"), action: {
                backgroundColor = .purple
            }))
    }
    
}

struct AlertINSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        AlertINSwiftUI()
    }
}


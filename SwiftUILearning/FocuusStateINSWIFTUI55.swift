//
//  FocuusStateINSWIFTUI.swift
//  SwiftUILearning
//
//  Created by Omkar Anarse on 03/08/23.
//

import SwiftUI

struct FocuusStateINSWIFTUI: View {
    
    enum OnBoardingFields : Hashable {
        case userName
        case password
    }
    
    @FocusState private var fieldInFocus : OnBoardingFields?
//    @FocusState private var focusedUserName : Bool
    @State private var userName : String = ""
//    @FocusState private var focusedPassword : Bool
    @State private var password : String = ""
    
    var body: some View {
        VStack(spacing: 20){
            TextField("Enter your user name", text: $userName)
                .focused($fieldInFocus, equals: .userName)
//                .focused($focusedUserName)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(30)
            
            TextField("Enter your password", text: $password)
                .focused($fieldInFocus, equals: .password)
//                .focused($focusedPassword)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(30)
            
            Button {
                let userNameIsValid = !userName.isEmpty
                let passwordIsValid = !password.isEmpty
                if userNameIsValid && passwordIsValid{
                    print("Sucessfully Signed Up! 🚀💦💦💦")
                }else if userNameIsValid{
                    fieldInFocus = .password
//                    focusedUserName = false
//                    focusedPassword = true
                }else{
                    fieldInFocus = .userName
//                    focusedUserName = true
//                    focusedPassword = false
                }
            } label: {
                Text("Sign Up 🚀")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.black)
                    .cornerRadius(50)
            }

        }
        .padding(40)
    }
}

struct FocuusStateINSWIFTUI_Previews: PreviewProvider {
    static var previews: some View {
        FocuusStateINSWIFTUI()
    }
}


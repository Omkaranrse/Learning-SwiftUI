//
//  BondingInSwiftUI.swift
//  SwiftUILearning
//
//  Created by Omkar Anarse on 01/08/23.
//

import SwiftUI

//BINDING ---> IS USED TO GET THE PARENT VARIABLES TO CHILD VIEW

struct BondingInSwiftUI: View {
    
    @State var backgroundColor : Color = Color.pink
    @State var title : String = "OMKAR"
    
    var body: some View {
        ZStack{
            backgroundColor
                .ignoresSafeArea()
            VStack {
                Text(title)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.black)
                MySignUpView(
                    backgroundColor : $backgroundColor,
                    title: $title
                )
            }
        }
    }
}

struct BondingInSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        BondingInSwiftUI()
    }
}

struct MySignUpView: View {
    
    //BINDING ---> IS USED TO GET THE PARENT VARIABLES TO CHILD VIEW
    @Binding var backgroundColor : Color
    @Binding var title : String
    @State var buttonView : Color = Color.black
    
    var body: some View {
        VStack{
            Button {
                self.backgroundColor = Color.blue
                self.buttonView = Color.orange
                self.title = "FLUTTER DEVELOPER"
            } label: {
                Text("BUTTON")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .padding()
                    .padding(.horizontal,20)
                    .background(buttonView)
                    .cornerRadius(20)
            }
            
        }
    }
}


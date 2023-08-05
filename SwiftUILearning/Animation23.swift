//
//  AnimationInSwiftUI.swift
//  SwiftUILearning
//
//  Created by Omkar Anarse on 01/08/23.
//

import SwiftUI

struct AnimationInSwiftUI: View {
    
    @State var colorChange : Bool = false
    
    var body: some View {
        VStack{
            Button {
//                withAnimation(.default){
                    colorChange.toggle()
//                }
            } label: {
                Text("BUTTON")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.black)
                    .cornerRadius(20)
            }
            
            Spacer()
            
            RoundedRectangle(cornerRadius: colorChange ? 50 : 25)
                .fill(colorChange ? Color.orange : Color.blue)
                .frame(
                    width: colorChange ? 100 : 200,
                    height: colorChange ? 100 : 200)
                .rotationEffect(Angle(degrees: colorChange ? 360 : 0))
                .offset(y: colorChange ? 400 : 0)
                .animation(Animation.default, value: colorChange )
            
            Spacer(minLength: 400)

        }
    }
}

struct AnimationInSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        AnimationInSwiftUI()
    }
}

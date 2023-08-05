//
//  AnimationTIming.swift
//  SwiftUILearning
//
//  Created by Omkar Anarse on 01/08/23.
//

import SwiftUI

struct AnimationTIming: View {
    
    @State var backgroundColor : Color = Color.yellow
    @State var isAnimating : Bool = false
    let timing : Double = 10.0
    
    var body: some View {
        ZStack {
            //background
            backgroundColor
                .ignoresSafeArea()
            
            //Content
            VStack{
                Button {
                    isAnimating.toggle()
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
                
//                RoundedRectangle(cornerRadius: 20)
//                    .frame(width: isAnimating ? 350 : 50,height: 100)
//                    .animation(Animation.default, value: isAnimating)
//                RoundedRectangle(cornerRadius: 20)
//                    .frame(width: isAnimating ? 350 : 50,height: 100)
//                    .animation(Animation.linear(duration: timing), value: isAnimating)
//                RoundedRectangle(cornerRadius: 20)
//                    .frame(width: isAnimating ? 350 : 50,height: 100)
//                    .animation(Animation.easeIn(duration: timing), value: isAnimating)
//                RoundedRectangle(cornerRadius: 20)
//                    .frame(width: isAnimating ? 350 : 50,height: 100)
//                    .animation(Animation.easeInOut(duration: timing), value: isAnimating)
//                RoundedRectangle(cornerRadius: 20)
//                    .frame(width: isAnimating ? 350 : 50,height: 100)
//                    .animation(Animation.easeOut(duration: timing), value: isAnimating)
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: isAnimating ? 350 : 50,height: 100)
                    .animation(
                        Animation.spring(
                            response: 1.0,
                            dampingFraction: 0.6,
                            blendDuration: 1.0
                        ),
                        value: isAnimating)
            }
        }
    }
}

struct AnimationTIming_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTIming()
    }
}


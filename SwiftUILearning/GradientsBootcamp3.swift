//
//  Gradients.swift
//  SwiftUILearning
//
//  Created by Omkar Anarse on 03/08/23.
//

import SwiftUI

struct Gradients: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
//                Color.red
                
//                LinearGradient(
//                    colors: [Color.red,Color.blue,Color.yellow,],
//                    startPoint: .top,
//                    endPoint: .bottomLeading
//                )
                
//                RadialGradient(
//                    colors: [Color.red,Color.blue],
//                    center: .center,
//                    startRadius: 5,
//                    endRadius: 200)
                
                AngularGradient(
                    colors: [Color.red,Color.blue],
                    center: .center,
                    startAngle: .degrees(15),
                    endAngle: .degrees(45)
                )
            )
            .frame(width: 300, height: 200)
    }
}

struct Gradients_Previews: PreviewProvider {
    static var previews: some View {
        Gradients()
    }
}


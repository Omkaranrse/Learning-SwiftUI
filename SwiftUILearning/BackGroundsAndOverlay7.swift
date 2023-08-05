//
//  BackGrounds.swift
//  SwiftUILearning
//
//  Created by Omkar Anarse on 01/08/23.
//

import SwiftUI

struct BackGrounds: View {
    var body: some View {
        Image (systemName: "heart.fill")
            .font(.system(size: 100))
            .foregroundColor(Color.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(
                            colors: [Color(#colorLiteral(red: 0.476841867, green: 0.5048075914, blue: 1, alpha: 1)),Color(#colorLiteral(red: 0.004859850742, green: 0.09608627111, blue: 0.5749928951, alpha: 1))],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing)
                    )
                    .frame(width: 200,height: 400)
                    .shadow(
                        color: Color(#colorLiteral(red: 0.7467580782, green: 0.3405612245, blue: 0.9758981718, alpha: 0.5040614652)),
                        radius: 10,x: 0.0,y: 10)
                    .overlay(
                        Circle()
                            .fill(Color.yellow)
                            .frame(width: 55,height: 270)
                            .overlay(
                                Text("5")
                                    .font(.title)
                            )
                            .shadow(
                                color: Color(#colorLiteral(red: 0.9998025298, green: 0.9413319826, blue: 0.002691520378, alpha: 1)),
                                radius: 10,x: 6,y: 10)
                        ,alignment: .bottomTrailing)
            )
                        
    }
}

struct BackGrounds_Previews: PreviewProvider {
    static var previews: some View {
        BackGrounds()
    }
}


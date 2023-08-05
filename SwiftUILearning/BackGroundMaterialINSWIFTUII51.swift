//
//  BackGroundMaterialINSWIFTUII.swift
//  SwiftUILearning
//
//  Created by Omkar Anarse on 01/08/23.
//

import SwiftUI

struct BackGroundMaterialINSWIFTUII: View {
    var body: some View {
        VStack{
           Spacer()
            VStack{
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 5)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .cornerRadius(30)
        }
        .ignoresSafeArea()
        .background(
            Image("ima")
                .frame(maxWidth: .infinity)
        )
    }
}

struct BackGroundMaterialINSWIFTUII_Previews: PreviewProvider {
    static var previews: some View {
        BackGroundMaterialINSWIFTUII()
    }
}


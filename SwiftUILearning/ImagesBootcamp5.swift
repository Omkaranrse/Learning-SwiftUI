//
//  Images.swift
//  SwiftUILearning
//
//  Created by Omkar Anarse on 03/08/23.
//


import SwiftUI

struct Images: View {
    var body: some View {
        Image("ima")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 350,height: 600)
            .clipShape(Ellipse())
    }
}

struct Images_Previews: PreviewProvider {
    static var previews: some View {
        Images()
    }
}
 


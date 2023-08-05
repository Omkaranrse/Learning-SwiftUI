//
//  Icons.swift
//  SwiftUILearning
//
//  Created by Omkar Anarse on 03/08/23.
//

import SwiftUI

struct Icons: View {
    var body: some View {
        Image(systemName: "house.lodge")
//            .font(.largeTitle)
            .font(.system(size: 100))
//            .foregroundColor(Color(#colorLiteral(red: 1, green: 0.5265955925, blue: 0.9646467566, alpha: 1)))

    }
}

struct Icons_Previews: PreviewProvider {
    static var previews: some View {
        Icons()
    }
}

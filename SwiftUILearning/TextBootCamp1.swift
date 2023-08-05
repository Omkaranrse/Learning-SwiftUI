//
//  TextBootCamp.swift
//  SwiftUILearning
//
//  Created by Omkar Anarse on 04/08/23.
//

import SwiftUI

struct TextBootCamp1: View {
    var body: some View {
        Text("I want to become a full stack flutter developer. I love to code everyday".lowercased())
            .font(.title)
            .fontWeight(.medium)
            .foregroundColor(Color.purple)
            .underline(true, color: .black)
            .italic()
            .strikethrough(true, color: .yellow)
//          Space btw text lines
//            .baselineOffset(100)
//          Space Btw letters
//            .kerning(10)
            .multilineTextAlignment(.leading)
            .frame(width: 290, height: 1000,
                   alignment:.center)
    }
}

struct TextBootCamp1_Previews: PreviewProvider {
    static var previews: some View {
        TextBootCamp1()
    }
}

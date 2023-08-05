//
//  Frame.swift
//  SwiftUILearning
//
//  Created by Omkar Anarse on 03/08/23.
//

import SwiftUI

struct Frame: View {
    var body: some View {
        Text("Flutter Developer")
            .background(Color.yellow)
            .frame(height: 100,alignment: .center)
            .background(Color.red)
            .frame(width: 200,alignment: .center)
            .background(Color.green)
            .frame(maxWidth: .infinity)
            .background(Color.purple)
            .frame(height: 400)
            .background(Color.blue)
            .frame(maxHeight: .infinity)
            .background(Color.orange)

    }
}

struct Frame_Previews: PreviewProvider {
    static var previews: some View {
        Frame()
    }
}


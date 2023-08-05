//
//  ColorPickerINSwiftUI.swift
//  SwiftUILearning
//
//  Created by Omkar Anarse on 01/08/23.
//

import SwiftUI

struct ColorPickerINSwiftUI: View {
    
    @State var backgroundColor : Color = Color.yellow
    
    var body: some View {
        ZStack{
            backgroundColor
                .ignoresSafeArea()
            
            ColorPicker("Select a color",
                        selection: $backgroundColor,
                        supportsOpacity: true
            )
            .font(.title)
            .fontWeight(.semibold)
            .foregroundColor(.white)
            .padding()
            .background(Color.black)
            .cornerRadius(30)
            .padding(.horizontal,40)
        }
    }
}

struct ColorPickerINSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerINSwiftUI()
    }
}


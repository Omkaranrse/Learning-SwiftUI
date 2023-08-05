//
//  Conditionals.swift
//  SwiftUILearning
//
//  Created by Omkar Anarse on 01/08/23.
//

import SwiftUI

struct Conditionals: View {
    
    @State var showCircle : Bool = false
    
    var body: some View {
        VStack(spacing: 20){
            Button("CLICK : \(showCircle.description)") {
                showCircle.toggle()
            }
            
            if(showCircle){
                Circle()
                    .frame(width: 90)
            }else{
                Rectangle().frame(width: 200,height: 200)
            }
            Spacer()
        }
    }
}

struct Conditionals_Previews: PreviewProvider {
    static var previews: some View {
        Conditionals()
    }
}


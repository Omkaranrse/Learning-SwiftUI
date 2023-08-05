//
//  ForEachLoop.swift
//  SwiftUILearning
//
//  Created by Omkar Anarse on 03/08/23.
//
import SwiftUI

struct ForEachLoop: View {
    
    
    
    var body: some View {
        VStack{
            ForEach(0..<10) { index in
                HStack{
                    Circle()
                        .fill(Color.pink)
                        .frame(width: 50, height: 50)
                    Text("Index is : \(index)")
                }
            }
        }
//        .background(Color.blue)
    }
}

struct ForEachLoop_Previews: PreviewProvider {
    static var previews: some View {
        ForEachLoop()
    }
}

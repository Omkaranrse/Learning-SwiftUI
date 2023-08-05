//
//  Grids.swift
//  SwiftUILearning
//
//  Created by Omkar Anarse on 03/08/23.
//

import SwiftUI

struct Grids: View {
    
    let columns : [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView{
            
            Rectangle()
                .fill(Color.gray)
                .frame(height: 200)
            
            LazyVGrid(columns: columns) {
                
                ForEach(0..<50) { index in
                    Rectangle()
                        .frame(height: 150)
                    
                }
            }
        }
    }
}

struct Grids_Previews: PreviewProvider {
    static var previews: some View {
        Grids()
    }
}


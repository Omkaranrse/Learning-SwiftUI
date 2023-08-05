//
//  AsyncImageINSWIFTUI.swift
//  SwiftUILearning
//
//  Created by Omkar Anarse on 01/08/23.
//

import SwiftUI

struct AsyncImageINSWIFTUI: View {
    
    let url = URL(string: "https://picsum.photos/200")
    
    var body: some View {
        AsyncImage(url: url) { Image in
            Image
                .resizable()
                .scaledToFit()
                .frame(width: 300 )
                .cornerRadius(20)
        } placeholder: {
            ProgressView()
        }
    }
}
struct AsyncImageINSWIFTUI_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageINSWIFTUI()
    }
}


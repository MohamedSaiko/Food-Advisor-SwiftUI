//
//  PostView.swift
//  Food Advisor SwiftUI
//
//  Created by Mohamed Sayed on 24.12.23.
//

import SwiftUI

struct PostView: View {
    
    @State var postBody = ""
    
    var body: some View {
        VStack(spacing: 12.0) {
            
            PostHeader()
            
            Text(postBody)
                .font(.callout)
                .fontWeight(.regular)
            
            Image(burger)
                .resizable()
        }
        .padding(.horizontal)
    }
}

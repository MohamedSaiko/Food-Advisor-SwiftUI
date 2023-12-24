//
//  Header.swift
//  Food Advisor SwiftUI
//
//  Created by Mohamed Sayed on 24.12.23.
//

import SwiftUI

struct Header: View {
    
    @State var searchBarShowOrder = false
    @State var txt = ""
    
    var body: some View {
        HStack() {
            
            if !searchBarShowOrder {
                Image(logo)
                    .resizable()
                    .frame(width: 60, height: 16)
            }
            
            Spacer()
            
            HStack() {
                
                if searchBarShowOrder == true {
                    
                    Image(systemName:"magnifyingglass")
                    
                    TextField("Search Posts", text: self.$txt)
                        .textFieldStyle(.roundedBorder)
                    
                    Button(action: {
                        withAnimation {
                            searchBarShowOrder.toggle()
                        }
                        
                    }) {
                        
                        Image(systemName: "xmark.circle")
                            .symbolRenderingMode(.monochrome)
                            .foregroundStyle(.black)
                    }
                    
                } else {
                    
                    Button(action: {
                        withAnimation {
                            searchBarShowOrder.toggle()
                        }
                        
                    }) {
                        
                        Image(search)
                            .renderingMode(.original)
                            .resizable()
                            .frame(width: 20, height: 20)
                            .padding(.horizontal, 10)
                    }
                }
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 6)
    }
}


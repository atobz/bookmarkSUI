//
//  buttons.swift
//  BookmarkActive
//
//  Created by Amir on 17.08.2022.
//

import SwiftUI

struct buttons: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct whiteButtonUI: View {
    var text: String
    var body: some View {
        ZStack{
            Text(text)
                .frame(width: 358, height: 58)
                .foregroundColor(.black)
                .font(.system(size: 16))
                .background(RoundedRectangle(cornerRadius: 15).fill(Color.white))
                .overlay(RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.white, lineWidth: 2))
        }
    }
}


struct longBlackButton: View {
    var text: String
    var body: some View {
        ZStack{
            Text(text)
                .frame(width: 358, height: 58)
                .foregroundColor(.white)
                .font(.system(size: 16))
                .background(RoundedRectangle(cornerRadius: 15).fill(Color.black))
            
                .overlay(RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.white, lineWidth: 2))
            
            
        }

    }
    
}

struct buttons_Previews: PreviewProvider {
    static var previews: some View {
        whiteButtonUI(text: "sf")
    }
}

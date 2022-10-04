//
//  Texts.swift
//  BookmarkActive
//
//  Created by Amir on 17.08.2022.
//

import SwiftUI

struct TextThinWhiteLetters: View {
    var text: String
    var body: some View {
        VStack(alignment: .leading){
            Text(text)
                .font(.system(size:36))
                .bold()
//                .fontWeight(.black)
//                    .font(.custom("SF-Pro-Display", size: 33)
//                            .weight(.lar))
                
        }
    }
}

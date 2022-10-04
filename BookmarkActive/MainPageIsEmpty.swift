//
//  MainPageIsEmpty.swift
//  BookmarkActive
//
//  Created by Amir on 24.09.2022.
//

import SwiftUI

struct MainPageIsEmpty: View {
    var body: some View {
        VStack{
        Spacer().frame(height: 30)
        Text("Bookmark App")
                .font(.system(size: 17)
                        .bold())
        Spacer().frame(height: 300)
        Text("Save your first \n bookmark")
                .multilineTextAlignment(.center)
                .font(.system(size: 36)
                        .bold())
        Spacer()
            
            
        }.ignoresSafeArea()
    }
}

struct MainPageIsEmpty_Previews: PreviewProvider {
    static var previews: some View {
        MainPageIsEmpty()
    }
}

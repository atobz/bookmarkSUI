//
//  Backgrounds.swift
//  BookmarkActive
//
//  Created by Amir on 17.08.2022.
//

import SwiftUI

struct Backgrounds: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct FirstPageBackground: View{
    var body: some View{
        ZStack{
            VStack{
                Image("bookmarkBackground")
                    .resizable()
                    .frame(width: 390, height: 614)
                    .ignoresSafeArea()
                Spacer()
                
            }
        }
    }
}

struct bottomSheet: View {
    var body: some View {
        ZStack{
            Image("bookmarkBackground")
                .resizable()
                .ignoresSafeArea()
            bottomSheetOne()
        }

        }
    }


struct Backgrounds_Previews: PreviewProvider {
    static var previews: some View {
        bottomSheet()
    }
}


struct bottomSheetOne: View {

    var body: some View {
            VStack{
            Spacer()
                ZStack{
            Rectangle()
                .fill(Color.white)
                .frame(width: 390, height: 380)
                .cornerRadius(25)
                    VStack{
                    closeBottomSheet()
                    top(placeholder: "Bookmark title")
                    }
            
            }
            
        }
            .ignoresSafeArea()
    }
}

struct CustomTextField: View{
    let placeholder: String
    var body: some View{
    TextField(placeholder, text: .constant(""))
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(
                    Color.gray.opacity(0.2)))
}
}


struct top: View{
    let placeholder: String
    var body: some View{
        VStack(alignment: .leading){
            
            Text("Title")
                .padding(10)
                
            
            TextField("Bookmark title", text: .constant(""))
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 16)
                        .fill(
                            Color.gray.opacity(0.2)))
                .padding(5)
            Text("Link")
                .padding(10)
            
            TextField("Bookmark link (URL)", text: .constant(""))
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 16)
                        .fill(
                            Color.gray.opacity(0.2)))
                .padding(5)
            
            
        }
        
    }
}


struct rightCross: View{
    var body: some View{
        VStack(alignment: .trailing){
            Image(systemName: "xmark")
                .foregroundColor(.gray)
        }
    }
}


struct closeBottomSheet: View {
    var body: some View {
        Button {
            // playSingle = true
        } label: {
            rightCross()
            }
            .padding()
        }
    }

//
//  BottomSheet.swift
//  BookmarkActive
//
//  Created by Amir on 25.09.2022.
//

import SwiftUI

struct BottomSheet: View {
    @State var title = ""
    @State var link = ""
    @Binding var websiteList: [LinkModel]
    @Binding var openBottomSheet: Bool
    var body: some View {
        ZStack{
            Color.black
                .opacity(0.7)
            VStack{
            Spacer()
                ZStack{
            Rectangle()
                .fill(Color.white)
                .frame(width: 390, height: 415)
                .cornerRadius(25)
                .ignoresSafeArea()
                    VStack{
                        HStack{
                        Spacer()
                        Button {
                           openBottomSheet = false
                        } label: {
                            rightCross()
                            }
                        }
                            .padding()
                        
                        
                        VStack(alignment: .leading){
                            
                            Text("Title")
                                .padding(10)
                                
                            
                            TextField("Bookmark title", text: $title)
                                .autocapitalization(.none)
                                .padding()
                                .background(
                                    RoundedRectangle(cornerRadius: 16)
                                        .fill(
                                            Color.gray.opacity(0.2)))
                                .padding(5)
                            Text("Link")
                                .padding(10)
                            
                            TextField("Bookmark link (URL)", text: $link)
                                .autocapitalization(.none)
                                .padding()
                                .background(
                                    RoundedRectangle(cornerRadius: 16)
                                        .fill(
                                            Color.gray.opacity(0.2)))
                                .padding(5)
                            
                            
                        }.padding(5)

                    
                        Button{
                            saveLink(title: title, link: link)
                            openBottomSheet = false
                            
                        } label:{
                            longBlackButton(text: "Save")
                        
                        }
                        .padding()
                    }
                    .ignoresSafeArea()
            }
            }.ignoresSafeArea()
            
        }
            .ignoresSafeArea()
    }
    
    func saveLink(title: String, link: String){
        let linkModel = LinkModel(title: title, link: link)
        websiteList.append(linkModel)
        Storage.AppStorageLinkModels.append(linkModel)
    }

}

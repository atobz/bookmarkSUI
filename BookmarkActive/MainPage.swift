
import SwiftUI
import UIKit

struct MainPage: View {
    @State var openBottomSheet = false
    @State var websiteList: [LinkModel] = Storage.AppStorageLinkModels
    @Environment(\.openURL) var openURL
    var body: some View {
        ZStack{
            VStack{
            if websiteList.isEmpty{
                MainPageIsEmpty()
            }
            
            else {
                ZStack{
                VStack{
                Spacer().frame(height: 30)
                Text ("List")
                    List{
                        ForEach(websiteList){ i in
                            HStack{
                            Text(i.title)
                            Image(systemName: "square.and.pencil")
                                    .onTapGesture {
                                        openURL(URL(string: i.link)!)
                                    }
                            }
                        }
                        .onDelete(perform: self.deleteItem)
                    }
                }.ignoresSafeArea()
            }
            }
            
            
            Spacer()
                
                Button {
                    openBottomSheet.toggle()
                } label: {
                    longBlackButton(text: "Add bookmark")
                }
                
            }
            
            
            
            
            
            if openBottomSheet{
                BottomSheet(websiteList: $websiteList, openBottomSheet: $openBottomSheet)
            }
            else{
                
            }
            
            
            
        }.navigationBarBackButtonHidden(true)
            .background(.ultraThinMaterial)
    }
    
    private func deleteItem(at indexSet: IndexSet){
        self.websiteList.remove(atOffsets: indexSet)
        Storage.AppStorageLinkModels.remove(atOffsets: indexSet)
    }
    
    func removeRows(at offsets: IndexSet) {
        websiteList.remove(atOffsets: offsets)
        Storage.AppStorageLinkModels.remove(atOffsets: offsets)
    }
    
    private func delete(with indexSet: IndexSet) {
           indexSet.forEach { websiteList.remove(at: $0) }
        indexSet.forEach { Storage.AppStorageLinkModels.remove(at: $0) }
       }
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}

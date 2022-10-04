import SwiftUI

struct StartingPage: View {
    @State var changeToNextPage = false
    var body: some View {
        NavigationView{
            ZStack{
                Color.black
                    .ignoresSafeArea()
                FirstPageBackground()
                VStack{
                    Spacer()
                    
                    HStack{
                        TextThinWhiteLetters(text: "Save all interesting \nlinks in one app")
                            .foregroundColor(.white)
                        Spacer()
                    }
                    .padding(10)
                    Button {
                        changeToNextPage = true
                        
                    }
                label: {
                    whiteButtonUI(text: "Lets Start Collecting")
                }
                }
                .padding(10)
                NavigationLink(isActive: $changeToNextPage) {
                    MainPage()
                    
                } label: {
                    EmptyView()
                }
            }
            .brightness(0.05)
            
        } 
    }
}

struct StartingPage_Previews: PreviewProvider {
    static var previews: some View {
        StartingPage()
    }
}

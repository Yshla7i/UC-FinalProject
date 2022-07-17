//
//  ContentView.swift
//  project
//
//  Created by Yousef Almutairy on 11/07/2022.
//

import SwiftUI




class CardInfo : ObservableObject {//########
    
    @Published var items = [String]()
    
}


struct ContentView: View {
    @State var sheetclosed = false
    @State var storyHolder = ""
    
    @State var cardIsClecked = false
    @State var test=""
    
    @EnvironmentObject var cardInfo : CardInfo//######
    
    
    
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                Color.white.ignoresSafeArea()
                VStack{
                    
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack{
                            //#########
                            ForEach(cardInfo.items,id: \.self) { item in
                                
                                ZStack{
                                    
                                    
                                    RoundedRectangle(cornerRadius: 99).foregroundColor(Color.black.opacity(0.6))
                                    Text(item)
                                        .foregroundColor(.white)
                                        .font(.system(size: 40)
                                            
                                        )
                                }.frame(width: 220, height: 150)
                                    .onTapGesture {
                                        
                                        cardIsClecked = true
                                        storyHolder=item
                                    }
                            }
                            
                            
                            
                            .padding().background(Color("g2"))
                            .clipShape(RoundedRectangle(cornerRadius: 14))
                            .shadow(color: .black.opacity(100), radius:5).padding()
                            
                            NavigationLink("", destination: InsideCards(presentThestory: $storyHolder), isActive: $cardIsClecked)
                        }
                    }
                    
                    
                    Spacer()
                    
                    
                    HStack {
                        Spacer()
                        Button("+"){
                            sheetclosed = true
                            
                        } .font(.system(size: 40)).foregroundColor(.white).padding().background(Color.init("g2")
                        ).clipShape(Circle()).shadow(color: .black, radius: 3)
                            .sheet(isPresented: $sheetclosed, content:{
                                secondSwiftUIView( storyHolderSecondView: $storyHolder)
                                
                            }).padding()
                    }
                    
                    
                    
                    
                    
                    
                }
            }
            
            .navigationTitle("Welcome")
            
        } .accentColor(Color("g2"))
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ContentView()
    }
}

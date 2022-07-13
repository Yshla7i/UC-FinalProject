//
//  ContentView.swift
//  project
//
//  Created by Yousef Almutairy on 11/07/2022.
//

import SwiftUI

struct ContentView: View {
    @State var sheetclosed = false
    @State var storyHolder = ""
    let Category : Category
   @State var cardIsClecked = false
  @State var test=""
   
 
    var body: some View {
        
        NavigationView {
            ZStack {
                            
                Color.black.opacity(0.8).ignoresSafeArea()
                VStack{
                    
                    
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(ctegories, id:  \.emoji) { Category in
                                
                                cardsView(Category:  Category)
                                    .onTapGesture {
                                        cardIsClecked = true }
                                

                            }
                        }
                        
                        NavigationLink("", destination: InsideCards(presentThestory: $storyHolder), isActive: $cardIsClecked)
                    }

                    
                    
                    
                    
                    
                    Button("+"){
                        sheetclosed = true
                        
                    } .font(.system(size: 40)).foregroundColor(.white).padding().background(Color.init("g2")
                    ).clipShape(Circle()).shadow(color: .black, radius: 3)
                        .sheet(isPresented: $sheetclosed, content:{
                            secondSwiftUIView( storyHolderSecondView: $storyHolder)
                        } )
                    Text(storyHolder)
                        .frame(width: 280, height: 50)
                        .foregroundColor(.pink)
                        .cornerRadius(20)
                        .background(.white)
                        .padding()
                    Spacer()
                }
            }
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
   
    static var previews: some View {
       
        ContentView(Category: Category(emoji: "🤩"))
    }
}

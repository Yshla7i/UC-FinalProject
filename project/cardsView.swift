//
//  cardsView.swift
//  project
//
//  Created by Yousef Almutairy on 11/07/2022.
//

import SwiftUI

struct Category {
   
    var emoji:String
   
   
}
let ctegories = [
    Category(emoji: "1")
 
]


struct cardsView: View {
    let Category : Category
    
    var body: some View {
       
      
            VStack{
               
                ZStack{
                    Circle().foregroundColor(Color.gray.opacity(0.2))
                    Text(Category.emoji)
                        .font(.system(size: 40)
                        )
                }.frame(width: 220, height: 150)
               
                
            }
            .padding().background(Color.indigo)
            .clipShape(RoundedRectangle(cornerRadius: 14))
        .shadow(color: .black.opacity(0.5), radius:10)
        
        
}
}

struct cardsView_Previews: PreviewProvider {
    static var previews: some View {
        cardsView(Category: Category(emoji: "cardView"))
    }
}

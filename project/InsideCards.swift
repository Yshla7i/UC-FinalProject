//
//  InsideCards.swift
//  project
//
//  Created by Yousef Almutairy on 11/07/2022.
//

import SwiftUI

struct InsideCards: View {
    @Binding var presentThestory:String
    
    var body: some View {
     
        ZStack {
            Color.white.ignoresSafeArea()
            VStack {
                HStack {
                 
                    Text(presentThestory)
                        .foregroundColor(Color("g2"))
                        .font(.system(size: 20))
                    .padding()
                    Spacer()
                }
                Spacer()
            }
                
        }
       
    }
}

struct InsideCards_Previews: PreviewProvider {
   
    static var previews: some View {
        InsideCards(presentThestory: .constant(""))
    }
}

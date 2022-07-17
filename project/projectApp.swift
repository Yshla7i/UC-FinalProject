//
//  testApp.swift
//  test
//
//  Created by Yousef Almutairy on 15/07/2022.
//

import SwiftUI

@main
struct testApp: App {
    @StateObject var cardInfo = CardInfo()
     
    var body: some Scene {
        WindowGroup {
            ContentView( )
                
                .environmentObject(cardInfo)
               
            
        }
    }
}

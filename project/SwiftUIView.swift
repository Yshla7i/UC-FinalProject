//
//  SwiftUIView.swift
//  project
//
//  Created by Yousef Almutairy on 11/07/2022.
//

import SwiftUI




struct storyValues: Identifiable {
    var id = UUID()
    var TitleName :String
    var theStory : String
}

struct SwiftUIView: View  {
   
  @State  var saveTheStory :String = ""
    @State  var saveTheTitle :String = ""
    var sss = ContentView()
    
    var body: some View {
        
      
        VStack {
            Text("story")
            
            
            TextField("write your  title", text: $saveTheTitle)
                    .background(Color.mint)
        TextField("write your  story", text: $saveTheStory)
                .background(Color.mint)
            
            Text("DONE")
                .onTapGesture {
                  
                    sss.sto = saveTheStory
                
        }
    }
       
}
    
    
    func storyA() {
        @State var story :String
      
    }
    
}
struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        
        SwiftUIView()
    }
}

//
//  secondSwiftUIView.swift
//  project
//
//  Created by Yousef Almutairy on 11/07/2022.
//

import SwiftUI





struct secondSwiftUIView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var savedstory = ""
    @Binding var storyHolderSecondView :String
   @State  var createCard = false
    var body: some View {
        
        ZStack {
            Color.indigo.ignoresSafeArea()
            VStack {
                
            
               

                HStack {
                    Text("Write your story")
                        .foregroundColor(Color.init("g1"))
                        .bold()
                        .padding(.leading)
                        .font(.system(size: 20))
                    Spacer()
                }
              
                    
                    TextEditor(text: $savedstory)
                  
                    .foregroundColor(.black)
                        .padding()
                      
                
                       
//                    TextField("write your story", text: $savedstory).padding()
//                        .foregroundColor(.white)
                
                    Spacer()
                
                Spacer()
                Text("Save")
                    .frame(width: 280, height: 50)
                    .background(Color.init("g1"))
                    .cornerRadius(12)
                    .padding()
                    .shadow(color: .black, radius: 5)
                    .onTapGesture {
                        storyHolderSecondView=savedstory
                            presentationMode.wrappedValue.dismiss()
                       
                        createCard = true
                        
                    }
                if createCard == true{
                    
                }
                else{
                    
                }
            }
        }
    }
}

struct secondSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        secondSwiftUIView( storyHolderSecondView: .constant(""))
    }
}

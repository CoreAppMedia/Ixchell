//
//  SideMenu.swift
//  APPUI
//
//  Created by CEDAM08 on 14/04/23.
//

import SwiftUI

struct SideMenu: View {
    @Binding var selectedTab: String
    @Namespace var animation
    var body: some View {

       
        
        VStack(alignment: .leading, spacing: 15, content: {
            //IMAGEN DE ARRIBa
            Image("image1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 70, height: 70)
                .cornerRadius(10)
            // boton de cierre
                .padding(.top,50)
            
           
            VStack(alignment: .leading, spacing: 6, content: {
                Text("WUAU!!")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                
                
                Button(action: {}, label: {
                    Text("MENU")
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .opacity(0.6)
                    
                    
                    
                })
                
                
            })
            //fin
            
            //botones
            
            VStack(spacing: 0){
                TabButton(image: "pawprint", titulo: "INICIO", selectedTab: $selectedTab, animaction: animation)
                
                TabButton(image: "pawprint", titulo: "Routine", selectedTab: $selectedTab, animaction: animation)

                TabButton(image: "pawprint", titulo: "Foro", selectedTab: $selectedTab, animaction: animation)
                
                TabButton(image: "pawprint", titulo: "Estimulacion", selectedTab: $selectedTab, animaction: animation)
                
                TabButton(image: "pawprint", titulo: "Husky", selectedTab: $selectedTab, animaction: animation)
                
                TabButton(image: "pawprint", titulo: "Peco", selectedTab: $selectedTab, animaction: animation)
            }
            .padding(.leading,-33)
            .padding(.top,50)
            Spacer ()
            
            VStack(alignment: .leading, spacing: 6, content: {
                
                TabButton(image:"pawprint.circle", titulo: "App Version 1.2.1", selectedTab: .constant(""), animaction: animation)
                    .padding(.leading, -15)

              
                
            })
            
        })
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading )
    }
}

struct SideMenu_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

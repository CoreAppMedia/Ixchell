//
//  TabButton.swift
//  APPUI
//
//  Created by CEDAM08 on 13/04/23.
//

import SwiftUI

struct TabButton: View {
    
    var image: String
    var titulo: String
    
    //
    @Binding
    var selectedTab: String
    
    var animaction: Namespace.ID
    var body: some View {
        Button(action: {withAnimation (.spring())
            
            {selectedTab = titulo}
            
        }, label: {

          HStack(spacing : 15){
              Image(systemName: image)
              
                  .font(.title2)
                  .frame(width: 30)
              
              Text(titulo)
                  .fontWeight(.semibold)
              
          }
          .foregroundColor(selectedTab == titulo ? Color("morado") : .white)
          .padding(.vertical, 12)
          .padding(.horizontal,20)
            
          .frame(maxWidth: getRect().width - 170, alignment: .leading)
          .background(
            
            ZStack{
                if selectedTab == titulo{
                 
                    Color.white
                        .opacity(selectedTab == titulo ? 1 : 0)
                        .clipShape(CustomCorners(corners: [.topRight,.bottomRight], radio: 10))
                        .matchedGeometryEffect(id: "TAB", in: animaction)
                    
                }
            }
          
            
          )
         
      })
    }
}

struct TabButton_Previews: PreviewProvider {
    static var previews: some View {
        
        ContentView()
        
    }
}


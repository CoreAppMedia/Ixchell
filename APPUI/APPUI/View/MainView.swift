//
//  MainView.swift
//  APPUI
//
//  Created by CEDAM08 on 13/04/23.
//

import SwiftUI

struct MainView: View {
    //SELECCION
    @State var selectedTab = "SB"
    @State var showMenu = false

    
    var body: some View {
        
       
        ZStack{
            
            
            Color("morado")
                .ignoresSafeArea()
            
            //menu lateral
            SideMenu(selectedTab: $selectedTab)
            
            ZStack{
                //doble pantalla
                Color.white
                    .opacity(0.6)
                    .cornerRadius(showMenu ? 15 : 0)
                    .shadow(color: Color.black.opacity(0.07), radius: 5, x: -5, y: 0)
                    .offset(x: showMenu ? -25 : 0)
                    .padding(.vertical,30)
                Color.white
                    .opacity(0.6)
                    .cornerRadius(showMenu ? 15 : 0)
                    .shadow(color: Color.black.opacity(0.07), radius: 5, x: -5, y: 0)
                    .offset(x: showMenu ? -50 : 0)
                    .padding(.vertical,60)
                
                Home(selectedTab: $selectedTab)
                    .cornerRadius(showMenu ? 15 : 0)
                
            }
            .scaleEffect(showMenu ? 0.84 : 1)
            .offset(x: showMenu ? getRect().width - 120 : 0)
            .ignoresSafeArea()
            .overlay(
                Button(action: {
                    withAnimation(.spring()){
                        showMenu.toggle()
                    }
                }, label: {
                        //para poner las barras como boton
                    VStack(spacing: 5){
                        Capsule()
                        .fill(showMenu ? Color.purple : Color.purple)
                        .frame(width: 30, height: 3)
                        VStack(spacing: 5){
                            Capsule()
                                .fill(showMenu ? Color.purple : Color.purple)
                                .frame(width: 30, height: 3)
                            Capsule()
                                .fill(showMenu ? Color.purple : Color.purple)
                                .frame(width: 30, height: 3)
                                .offset(y: showMenu ? -8 : 0)
                        }
                        
                    }
                    
                    
                    
                    
                    
                })
                .padding()
                
                ,alignment: .topLeading
            )
            
            
            }
        }
    }
    



struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

    extension View{
        
        func getRect()->CGRect{
            
            return UIScreen.main.bounds
        }
        
    }

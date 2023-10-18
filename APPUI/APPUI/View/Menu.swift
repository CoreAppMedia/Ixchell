//
//  Home.swift
//  APPUI
//
//  Created by CEDAM08 on 14/04/23.
//

import SwiftUI
import AVKit
struct Home: View {
    @Binding var selectedTab: String
    
    init(selectedTab: Binding<String>){
        self._selectedTab = selectedTab
        UITabBar.appearance().isHidden = true
    }
    var body: some View {
     //tab view
        
        TabView(selection: $selectedTab){//vistas
        
                PaginaPricipal()
                    .tag("PaginaPricipal")
                Routine()
                    .tag("Routine")
                Foro()
                    .tag("Foro")
                Estimulacion()
                    .tag("Estimulacion")
                Husky()
                    .tag("Husky")
                Peco()
                    .tag("Peco")
            
                
            
            
            
            

            
        //vistas
            
            
            }
        }
    }

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct PaginaPricipal: View{
    var body: some View{
        NavigationView{
            
            VStack(alignment: .leading, spacing: 20){
                Image("manos")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: getRect().width - 50, height: 400)
                    .cornerRadius(20)
                VStack(alignment: .leading, spacing: 5, content: {
                    Text("yolikan").foregroundColor(.primary).shadow(color: .gray, radius: 1.08)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                        .padding(100)
                        
            
                    
                })
 
                
            }
            .navigationTitle("INICIO")
            
            
            }
        
        }
    
    }
    

    struct Routine: View{
        
        var body: some View{
            
            VStack{
                
                VideoFile()
                
            }
                        .navigationTitle("Routune")
            }//navigation
        }
    
    
    struct Foro: View{
        var body: some View{
            VStack{
                NavigationView{
                    ChatView()
                   
                    }
                    .navigationTitle("Foro")
                    
                }
            }
        }
    
    
    struct Estimulacion: View{
        var body: some View{
            NavigationView{
               Estimulation()
               
                }
                        .navigationTitle("Estimulacion")
                
            }
        }
    
    
    struct Husky: View{
        var body: some View{
            NavigationView{
                
                VStack(alignment: .leading, spacing: 20){
                    Image("husky3")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .padding()
                    Spacer()
                    VStack(alignment: .leading, spacing: 5, content: {
                        Text("Information").foregroundColor(.purple).shadow(color: .gray, radius: 1.08)
                            .font(.title)
                            .padding([.leading, .trailing], 10)
                        Text("HEIGHT").foregroundColor(.purple).bold()
                            .font(.title2)
                            .padding([.leading, .trailing, .top], 10)
                        Text("21-23.5 inches (males)").foregroundColor(.black)
                            .font(.subheadline)
                            .padding([.leading, .trailing, .top], 10)
                        Text("20-22 inches (female)").foregroundColor(.black)
                            .font(.subheadline)
                            .padding([.leading, .trailing, .top], 10)
                        Text("WEIGHT").foregroundColor(.purple).bold()
                            .font(.title2)
                            .padding([.leading, .trailing, .top], 10)
                        Text("45-60 pounds (male)").foregroundColor(.black)
                            .font(.subheadline)
                            .padding([.leading, .trailing, .top], 10)
                        Text("35-50 pounds (female)").foregroundColor(.black)
                            .font(.subheadline)
                            .padding([.leading, .trailing, .top], 10)
                        Text("LIFE EXPECTANCY").foregroundColor(.purple).bold()
                            .font(.title2)
                            .padding([.leading, .trailing, .top], 10)
                        Text("12-14 years").foregroundColor(.black)
                            .font(.subheadline)
                            .padding([.leading, .trailing, .top], 10)
                        Spacer()
                        
                        
                    })
                }
                .navigationTitle("Husky")
                
                
            }
        }
    }
    
    struct Peco: View{
        var body: some View{
            NavigationView{
                
      
                VStack(alignment: .leading, spacing: 20){
                    Image("peco")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .padding()
                    Spacer()
                    VStack(alignment: .leading, spacing: 5, content: {
                        Text("Information").foregroundColor(.purple).shadow(color: .gray, radius: 1.08)
                            .font(.title)
                            .padding([.leading, .trailing], 10)
                        Text("HEIGHT").foregroundColor(.purple).bold()
                            .font(.title2)
                            .padding([.leading, .trailing, .top], 10)
                        Text("22-24 inches (males)").foregroundColor(.black)
                            .font(.subheadline)
                            .padding([.leading, .trailing, .top], 10)
                        Text("21-23 inches (female)").foregroundColor(.black)
                            .font(.subheadline)
                            .padding([.leading, .trailing, .top], 10)
                        Text("WEIGHT").foregroundColor(.purple).bold()
                            .font(.title2)
                            .padding([.leading, .trailing, .top], 10)
                        Text("65-80 pounds (male)").foregroundColor(.black)
                            .font(.subheadline)
                            .padding([.leading, .trailing, .top], 10)
                        Text("55-70 pounds (female)").foregroundColor(.black)
                            .font(.subheadline)
                            .padding([.leading, .trailing, .top], 10)
                        Text("LIFE EXPECTANCY").foregroundColor(.purple).bold()
                            .font(.title2)
                            .padding([.leading, .trailing, .top], 10)
                        Text("11-15 years").foregroundColor(.black)
                            .font(.subheadline)
                            .padding([.leading, .trailing, .top], 10)
                        
                        
                        
                        Spacer()
                        
                        
                        
                        
                    })
                }
                        .navigationTitle("Peco")
                
                
            }
        }
    }
    



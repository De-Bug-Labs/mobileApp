//
//  home.swift
//  Gaapp
//
//  Created by Emilio Rivas on 5/9/21.
//

import SwiftUI

struct home: View {
    var body: some View {
        TabView{
            ZStack{
                Color(red: 40 / 255, green: 136 / 255, blue: 168 / 255).ignoresSafeArea()
                VStack {
                    Image("parallax").resizable().aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/).frame(width: 450, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).padding(.top, 60).ignoresSafeArea()
                    Text("Aplicacion de aprendizaje")
                        .font(.system(size: 34))
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                    Text("Aqui podras aprender a manejar elementos basicos de aplicaciones al igual que encontrar material de apoyo. Solo selecciona cualquiera de las opciones aqui abajo.")
                        .font(.system(size: 25))
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .padding([.top, .leading, .trailing], 30.0)
                    Spacer()
                    Image("down-arrow").resizable().aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/).frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).padding(.bottom, 30)
                }
                Spacer()
            }
            .tabItem {
                Text("Principal").font(.title)
                Image(systemName: "house").font(.title)
                
            }
            material()
            .tabItem {
                Text("Material").font(.title)
                Image(systemName: "book").font(.title)
                
            }
        }
    }
}

struct home_Previews: PreviewProvider {
    static var previews: some View {
        home()
    }
}

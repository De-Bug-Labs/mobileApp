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
                    Image("parallax").resizable().aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/).frame(width: 450, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).padding(.top, 60)
                    Spacer()
                    HStack{
                        VStack{
                            Text("Aplicacion de aprendizaje")
                                .font(.system(size: 30))
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center).padding(.top, 50)
                            Text("Aqui podras aprender a manejar elementos basicos de aplicaciones al igual que encontrar material de apoyo. Solo selecciona cualquiera de las opciones aqui abajo.")
                                .font(.system(size: 22))
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                                .padding(.top, 30).padding(.horizontal, 30)
                            Image(systemName: "arrow.down").resizable().aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/).frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).padding(.top, 50).foregroundColor(.white)
                            Spacer()
                        }.padding(.top, 30)
                    }
                    Spacer()
                }.ignoresSafeArea()
            }
            .tabItem {
                Text("Principal").font(.title)
                Image(systemName: "house.fill").font(.title)
            }
            material()
            .tabItem {
                Text("Material").font(.title)
                Image(systemName: "archivebox.fill").font(.system(size: 50))
            }
            contactos()
                .tabItem {
                    Text("Apoyo").font(.title)
                    Image(systemName: "phone.fill")
                }.font(.system(size: 50))
        }.navigationBarBackButtonHidden(true)
    }
}

struct home_Previews: PreviewProvider {
    static var previews: some View {
        home()
    }
}

//
//  ContentView.swift
//  Gaapp
//
//  Created by Emilio Rivas on 5/8/21.
//

import SwiftUI

struct ContentView: View {
    @State private var infoPage = false
    var body: some View {
        NavigationView{
            ZStack{
                Color(red: 40 / 255, green: 136 / 255, blue: 168 / 255).ignoresSafeArea()
                VStack{
                    HStack{
                        VStack{
                            Image("roof").resizable().frame(width: 150, height: 150).padding(.top, 10)
                            Text("GAAP")
                                .font(.custom("Helvetica Neue", size: 70)).fontWeight(.bold).foregroundColor(Color.white)
                        }
                    }.padding(.top, 40).ignoresSafeArea()
                    HStack{
                        VStack{
                            Text("Aplicacion de aprendizaje dinamico y de apoyo")
                                .font(.system(size: 30))
                                .multilineTextAlignment(.center)
                                .padding(.horizontal)
                                .foregroundColor(Color.white)
                        }
                    }
                    Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                    NavigationLink(
                        destination: home(),
                        label: {
                            Text("COMENZAR")
                                .font(.system(size: 25))
                                .fontWeight(.bold)
                                .padding()
                                .foregroundColor(Color.black)
                                .background(Color(red: 240 / 255, green: 210 / 255, blue: 136 / 255))
                                .cornerRadius(10)
                        })
                    Spacer()
                    
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
